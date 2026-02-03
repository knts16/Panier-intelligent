# Où sont mes fichiers ?

## Sur ton ordinateur

Tous les fichiers du projet sont ici :
```
C:\Users\UATM\Desktop\panier_intelligent\
```

Tu devrais voir au moins :
- `app.py` — application principale
- `db.py` — base de données
- `services.py` — logique métier
- `requirements.txt` — dépendances
- `templates/` — dossiers avec base.html, index.html
- `static/` — dossier avec styles.css
- `tests/` — dossier avec test_top_product.py
- `commit-and-push.bat` — script pour envoyer sur GitHub
- `wsgi.py`, `Procfile`, `README.md`, etc.

Si tu ne les vois pas : ouvre l’Explorateur de fichiers, va sur le Bureau (Desktop), puis ouvre le dossier **panier_intelligent**.

---

## Sur GitHub (après le push)

Une fois le push réussi, les fichiers apparaissent ici :
**https://github.com/knts16/Panier-intelligent**

- Clique sur le lien ou copie-colle dans ton navigateur.
- Tu dois voir la liste des fichiers (app.py, db.py, templates/, etc.).
- Si la page est vide ou affiche seulement un README : le push n’a pas encore été fait ou a échoué.

---

## Je ne vois toujours pas les fichiers sur GitHub

Cela veut dire que le code n’a pas encore été poussé. À faire :

### 1. Vérifier que Git est installé
- Ouvre **PowerShell** ou **Invite de commandes**.
- Tape : `git --version`
- Si tu as une erreur "git n'est pas reconnu", installe Git : https://git-scm.com/download/win  
  Puis ferme et rouvre PowerShell.

### 2. Lancer le script d’envoi
- Va dans le dossier : `C:\Users\UATM\Desktop\panier_intelligent`
- Double-clique sur : **commit-and-push.bat**
- Suis les messages à l’écran.
- Quand on te demande le mot de passe GitHub, utilise un **Personal Access Token** (voir GUIDE-RAPIDE.md).

### 3. Vérifier après le push
- Ouvre : https://github.com/knts16/Panier-intelligent  
- Rafraîchis la page (F5).  
- Tu devrais voir tous les fichiers listés.

---

## Récapitulatif

| Où ?              | Lien ou chemin |
|-------------------|----------------|
| Dossier local     | `C:\Users\UATM\Desktop\panier_intelligent` |
| Repo GitHub       | https://github.com/knts16/Panier-intelligent |

Si tu as fait le push et que tu ne vois toujours rien sur GitHub, dis-moi exactement ce que tu vois (message d’erreur ou capture d’écran).
