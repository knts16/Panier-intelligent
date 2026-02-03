# Panier Intelligent

Application web Flask pour suivre et analyser vos dépenses.

## Fonctionnalités

- **US-01** : Ajout d'un achat (nom, prix, date)
- **US-02** : Consultation de l'historique trié par date
- **US-03** : Analyse du produit le plus acheté
- **US-04** : Bilan financier avec total des dépenses

## Installation locale

```bash
# Installer les dépendances
pip install -r requirements.txt

# Lancer l'application
python app.py
```

L'application sera accessible sur `http://127.0.0.1:5000`

## Déploiement sur Render

1. **Créer un compte GitHub** et pousser le code :
   ```bash
   git init -b main
   git add .
   git commit -m "Initial commit"
   git remote add origin https://github.com/VOTRE_COMPTE/panier-intelligent.git
   git push -u origin main
   ```

2. **Créer un compte Render** sur https://render.com

3. **Créer un nouveau Web Service** :
   - Connecter votre repository GitHub
   - **Build Command** : `pip install -r requirements.txt`
   - **Start Command** : `gunicorn wsgi:app`
   - **Plan** : Free

4. **Variables d'environnement** (optionnel mais recommandé) :
   - `SECRET_KEY` : Une clé secrète aléatoire pour Flask

5. Render générera automatiquement une URL publique du type :
   `https://panier-intelligent.onrender.com`

## Structure du projet

```
panier_intelligent/
├── app.py              # Application Flask principale
├── db.py               # Modèles et configuration SQLAlchemy
├── services.py         # Logique métier
├── wsgi.py             # Point d'entrée pour production
├── Procfile            # Configuration pour Render
├── requirements.txt    # Dépendances Python
├── templates/          # Templates HTML
├── static/            # Fichiers CSS
└── tests/             # Tests unitaires
```

## Tests

```bash
pytest
```

## Technologies

- Python 3.14+
- Flask 3.0.2
- SQLAlchemy 2.0.36
- SQLite (base de données)
- Gunicorn (serveur WSGI pour production)
