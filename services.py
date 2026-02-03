from __future__ import annotations

from collections import Counter
from dataclasses import dataclass
from datetime import date
from typing import Iterable, List, Optional, Tuple


@dataclass(frozen=True)
class Purchase:
    name: str
    price: float
    date: date


def add_purchase(
    purchases: List[Purchase],
    name: str,
    price: float,
    purchase_date: date,
) -> Purchase:
    """Create and append a new purchase with basic validations."""
    if not name.strip():
        raise ValueError("Le nom du produit est obligatoire.")

    if price <= 0:
        raise ValueError("Le prix doit être un nombre positif.")

    if purchase_date > date.today():
        raise ValueError("La date ne peut pas être dans le futur.")

    p = Purchase(name=name.strip(), price=float(price), date=purchase_date)
    purchases.append(p)
    return p


def _filter_by_period(
    purchases: Iterable[Purchase],
    start: Optional[date],
    end: Optional[date],
) -> List[Purchase]:
    results: List[Purchase] = []
    for p in purchases:
        if start and p.date < start:
            continue
        if end and p.date > end:
            continue
        results.append(p)
    return results


def get_sorted_purchases(
    purchases: Iterable[Purchase],
    start: Optional[date] = None,
    end: Optional[date] = None,
) -> List[Purchase]:
    """Return purchases filtered by period and sorted from newest to oldest."""
    filtered = _filter_by_period(purchases, start, end)
    return sorted(filtered, key=lambda p: p.date, reverse=True)


def get_top_product(
    purchases: Iterable[Purchase],
    start: Optional[date] = None,
    end: Optional[date] = None,
) -> Optional[Tuple[str, int]]:
    """
    Return (product_name, occurrences) for the most purchased product.

    If several products are tied, the one encountered first in the
    filtered list wins (Counter preserves insertion order for ties).
    """
    filtered = _filter_by_period(purchases, start, end)
    if not filtered:
        return None

    counter = Counter(p.name for p in filtered)
    product, count = counter.most_common(1)[0]
    return product, count


def get_total_amount(
    purchases: Iterable[Purchase],
    start: Optional[date] = None,
    end: Optional[date] = None,
) -> float:
    """Return the total amount spent for the given period."""
    filtered = _filter_by_period(purchases, start, end)
    return float(sum(p.price for p in filtered))

