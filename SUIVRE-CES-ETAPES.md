# Les fichiers ne vont toujours pas sur GitHub – À faire

Utilise **le site GitHub** pour envoyer les fichiers, sans installer Git.

---

## En 5 minutes

### 1. Ouvre GitHub
Va sur : **https://github.com/knts16/Panier-intelligent**

### 2. Clique sur « Add file » puis « Upload files »
(Bouton vert en haut à droite)

### 3. Ouvre le dossier du projet sur ton PC
- **Bureau** → dossier **panier_intelligent**
- Tu dois voir : `app.py`, `db.py`, `requirements.txt`, et les dossiers `static`, `templates`, `tests`

### 4. Envoie les fichiers vers GitHub
**Méthode A (la plus simple)**  
- Dans `panier_intelligent`, sélectionne **tout** avec **Ctrl+A**  
- **Exclure** : si tu vois un dossier `.git` ou `__pycache__` ou un fichier `purchases.db`, enlève-les de la sélection (clic dessus en maintenant Ctrl pour les désélectionner)  
- **Glisse-dépose** tout ce qui est sélectionné dans la zone « Drag files here » sur la page GitHub  

**Méthode B (fichier par fichier)**  
- Clique sur « choose your files » sur GitHub  
- Ouvre `panier_intelligent` et sélectionne : `app.py`, `db.py`, `services.py`, `wsgi.py`, `requirements.txt`, `Procfile`, `runtime.txt`, `README.md`  
- Valide.  
- Ensuite « Add file » → « Upload files » encore une fois et envoie le contenu du dossier **static** (le fichier `styles.css`).  
- Répète pour le dossier **templates** (fichiers `base.html`, `index.html`).  
- Répète pour le dossier **tests** (fichier `test_top_product.py`).  

Pour que les dossiers existent sur GitHub, quand tu envoies un fichier tu peux mettre dans le champ du nom :  
- `static/styles.css`  
- `templates/base.html`  
- `templates/index.html`  
- `tests/test_top_product.py`  

### 5. En bas de la page GitHub
- **Commit message** : écris `Ajout de tous les fichiers du projet`
- Clique sur **Commit changes**

### 6. Vérifier
Rafraîchis la page (F5). Tu dois voir la liste des fichiers (app.py, db.py, static/, templates/, tests/, etc.).

---

## Si tu ne vois pas certains fichiers ou dossiers

Sur GitHub, au-dessus de la liste des fichiers :
- Vérifie que tu es sur la branche **main** (menu déroulant).
- Si tu as créé le dépôt avec un README au début, tes nouveaux fichiers apparaissent en plus du README.

---

## Résumé

| Où | Quoi faire |
|----|------------|
| PC | Bureau → panier_intelligent → Ctrl+A → glisser vers la fenêtre du navigateur |
| GitHub | Add file → Upload files → déposer les fichiers → Commit changes |

Aucun logiciel à installer. Une fois les fichiers déposés, ils restent sur https://github.com/knts16/Panier-intelligent.
