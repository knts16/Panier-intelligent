# Dépannage : les fichiers n’apparaissent pas sur GitHub

Tu as le jeton mais tu ne vois toujours pas les fichiers sur https://github.com/knts16/Panier-intelligent. Suis ces étapes dans l’ordre.

---

## 1. Vérifier la branche sur GitHub

Sur la page du dépôt, regarde au-dessus de la liste des fichiers :

- Tu dois voir une branche nommée **main** (menu déroulant).
- Si tu vois **master** ou une autre branche, clique dessus et choisis **main**.
- Si **main** n’existe pas, passe à la section 3 (push avec le jeton dans l’URL).

---

## 2. Relancer le push avec le script de vérification

1. Ferme toutes les fenêtres PowerShell / Invite de commandes.
2. Dans le dossier `panier_intelligent`, double-clique sur **push-verifier.bat**.
3. Quand on te demande :
   - **Username** : tape `knts16` puis Entrée.
   - **Password** : colle **ton jeton** (Ctrl+V) puis Entrée. Ne tape rien d’autre, pas d’espace.
4. Regarde les messages. Si tu vois `Writing objects: 100%` puis un pourcentage, le push a réussi.
5. Ouvre https://github.com/knts16/Panier-intelligent, choisis la branche **main** et rafraîchis (F5).

---

## 3. Utiliser le jeton dans l’URL (si le push échoue encore)

Parfois l’invite ne prend pas bien le jeton. Tu peux le mettre dans l’URL une seule fois pour pousser.

1. Ouvre **PowerShell** ou **Git Bash** dans le dossier du projet.
2. Remplace `TON_JETON` par ton vrai jeton (celui qui commence par `ghp_...`) et exécute **une seule ligne** :

```bash
git remote set-url origin https://knts16:TON_JETON@github.com/knts16/Panier-intelligent.git
```

Exemple (avec un faux jeton) :
```bash
git remote set-url origin https://knts16:ghp_abc123xyz@github.com/knts16/Panier-intelligent.git
```

3. Envoie le code :

```bash
git push -u origin main
```

4. Pour ne pas laisser le jeton dans la config, remet l’URL sans jeton :

```bash
git remote set-url origin https://github.com/knts16/Panier-intelligent.git
```

5. Vérifie sur GitHub : https://github.com/knts16/Panier-intelligent, branche **main**, F5.

---

## 4. Vérifier le jeton

- Le jeton doit avoir la permission **repo** (accès complet aux dépôts).
- S’il a expiré ou n’a pas **repo**, crée-en un nouveau : https://github.com/settings/tokens  
  → Generate new token (classic) → coche **repo** → Generate token, puis utilise ce nouveau jeton.

---

## 5. Si le dépôt GitHub a été créé avec un README

Si ton dépôt a été créé avec un README ou une licence sur GitHub :

1. Dans le dossier du projet, exécute :

```bash
git pull origin main --allow-unrelated-histories
```

S’il propose un message de fusion, enregistre et quitte (souvent `:wq` dans l’éditeur qui s’ouvre).
2. Puis :

```bash
git push -u origin main
```

---

## 6. Où voir les fichiers sur GitHub

- Page du dépôt : https://github.com/knts16/Panier-intelligent  
- En haut : branche **main** sélectionnée.  
- En dessous : liste des fichiers et dossiers (`app.py`, `db.py`, `templates/`, `static/`, etc.).  
- Si la page est vide, tu es peut-être sur une autre branche : clique sur le nom de la branche et choisis **main**.

---

En résumé : utilise **push-verifier.bat** avec ton jeton, vérifie que tu es sur la branche **main** sur GitHub. Si ça échoue, utilise la méthode avec le jeton dans l’URL (section 3).
