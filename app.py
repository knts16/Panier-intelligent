from __future__ import annotations

import os
from datetime import date, datetime
from typing import List, Optional

from flask import Flask, flash, redirect, render_template, request, url_for

from db import PurchaseModel, SessionLocal, init_db
from services import Purchase, add_purchase, get_sorted_purchases, get_top_product, get_total_amount

app = Flask(__name__)
app.secret_key = os.environ.get("SECRET_KEY", "dev-secret-key-change-in-production")


# Initialize database (SQLite)
init_db()


def _parse_date(value: str) -> Optional[date]:
    if not value:
        return None
    return datetime.strptime(value, "%Y-%m-%d").date()


@app.route("/", methods=["GET", "POST"])
def index():
    today = date.today()

    # Handle new purchase submission
    if request.method == "POST":
        name = request.form.get("name", "")
        price_raw = request.form.get("price", "")
        date_raw = request.form.get("date", "")

        try:
            price = float(price_raw)
        except (TypeError, ValueError):
            flash("Le prix doit être un nombre positif.", "error")
        else:
            try:
                purchase_date = _parse_date(date_raw) or today
            except ValueError:
                flash("Format de date invalide.", "error")
            else:
                # Use service for validations, then persist in DB
                try:
                    tmp_list: List[Purchase] = []
                    validated = add_purchase(tmp_list, name, price, purchase_date)
                except ValueError as exc:
                    flash(str(exc), "error")
                else:
                    with SessionLocal() as session:
                        model = PurchaseModel(
                            name=validated.name,
                            price=validated.price,
                            date=validated.date,
                        )
                        session.add(model)
                        session.commit()

                    flash("Achat ajouté avec succès.", "success")
                    return redirect(url_for("index"))

    # Period filters for history / top-product / summary
    start_raw = request.args.get("start_date", "")
    end_raw = request.args.get("end_date", "")

    try:
        start_date = _parse_date(start_raw) if start_raw else None
    except ValueError:
        start_date = None
        flash("Date de début invalide, filtre ignoré.", "error")

    try:
        end_date = _parse_date(end_raw) if end_raw else None
    except ValueError:
        end_date = None
        flash("Date de fin invalide, filtre ignoré.", "error")

    # Load all purchases from DB, then reuse service layer for
    # filtering, sorting, top product and total.
    with SessionLocal() as session:
        rows = session.query(PurchaseModel).all()

    all_purchases: List[Purchase] = [
        Purchase(name=row.name, price=row.price, date=row.date) for row in rows
    ]

    purchases = get_sorted_purchases(all_purchases, start_date, end_date)
    # top & total must correspond exactly to the displayed list
    top = get_top_product(purchases)
    total = get_total_amount(purchases)

    return render_template(
        "index.html",
        purchases=purchases,
        top_product=top,
        total=total,
        today=today.strftime("%Y-%m-%d"),
        start_date=start_date.strftime("%Y-%m-%d") if start_date else "",
        end_date=end_date.strftime("%Y-%m-%d") if end_date else "",
    )


if __name__ == "__main__":
    app.run(debug=True)

