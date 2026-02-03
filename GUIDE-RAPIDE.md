# Guide Rapide : Commit vers GitHub

Tu as déjà le compte GitHub `knts16` et le repo `Panier-intelligent`.

## Étapes simples

### 1. Ouvre PowerShell dans ce dossier
- Clic droit sur le dossier `panier_intelligent` → "Ouvrir dans PowerShell"
- OU ouvre PowerShell et tape :
  ```powershell
  cd C:\Users\UATM\Desktop\panier_intelligent
  ```

### 2. Exécute ces commandes (une par une)

```powershell
# Initialiser Git (si pas déjà fait)
git init -b main

# Ajouter tous les fichiers
git add .

# Créer le commit
git commit -m "Application Panier Intelligent avec base de données"

# Lier à ton repository GitHub
git remote add origin https://github.com/knts16/Panier-intelligent.git

# Si le remote existe déjà, utilise plutôt :
# git remote set-url origin https://github.com/knts16/Panier-intelligent.git

# Pousser vers GitHub
git push -u origin main
```

### 3. Authentification

Quand GitHub demande tes identifiants :
- **Username** : `knts16`
- **Password** : Utilise un **Personal Access Token** (PAS ton mot de passe GitHub)

#### Créer un Token GitHub :
1. Va sur : https://github.com/settings/tokens
2. "Generate new token" → "Generate new token (classic)"
3. Nom : `panier-intelligent`
4. Coche : `repo` ✅
5. "Generate token"
6. **Copie le token** (ex: `ghp_xxxxxxxxxxxxx`)
7. Colle-le quand Git demande le mot de passe

---

## Alternative : Double-cliquer sur le fichier

Tu peux aussi **double-cliquer** sur `commit-and-push.bat` dans le dossier.

---

## Vérification

Une fois terminé, va sur :
👉 https://github.com/knts16/Panier-intelligent

Tu devrais voir tous tes fichiers !
