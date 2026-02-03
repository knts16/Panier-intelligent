"""Point d'entrée WSGI pour le déploiement en production."""
from app import app

if __name__ == "__main__":
    app.run()
