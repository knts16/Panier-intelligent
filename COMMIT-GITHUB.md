# Guide : Commit et Push vers GitHub

## Prérequis

Assure-toi que Git est installé :
- Télécharge depuis : https://git-scm.com/download/win
- Ou installe via : `winget install Git.Git`

Après installation, **redémarre PowerShell** pour que Git soit dans le PATH.

---

## Commandes à exécuter (dans PowerShell)

Ouvre PowerShell dans le dossier `panier_intelligent` et exécute ces commandes **une par une** :

### 1. Aller dans le dossier du projet
```powershell
cd C:\Users\UATM\Desktop\panier_intelligent
```

### 2. Initialiser Git (si pas déjà fait)
```powershell
git init -b main
```

### 3. Vérifier les fichiers à ajouter
```powershell
git status
```

### 4. Ajouter tous les fichiers
```powershell
git add .
```

### 5. Créer le commit
```powershell
git commit -m "Application Panier Intelligent avec base de données SQLite et déploiement"
```

### 6. Configurer le remote GitHub
```powershell
git remote add origin https://github.com/knts16/Panier-intelligent.git
```

Si tu as déjà un remote, utilise :
```powershell
git remote set-url origin https://github.com/knts16/Panier-intelligent.git
```

### 7. Vérifier le remote
```powershell
git remote -v
```

### 8. Pousser vers GitHub
```powershell
git push -u origin main
```

---

## Authentification GitHub

Si GitHub demande une authentification :

1. **Ne pas utiliser ton mot de passe** (désactivé depuis 2021)
2. **Utiliser un Personal Access Token (PAT)** :

   a. Va sur : https://github.com/settings/tokens
   
   b. Clique sur "Generate new token" → "Generate new token (classic)"
   
   c. Donne un nom : `panier-intelligent-deploy`
   
   d. Sélectionne les permissions :
      - ✅ `repo` (accès complet aux repositories)
   
   e. Clique sur "Generate token"
   
   f. **Copie le token** (tu ne le verras qu'une fois !)
   
   g. Quand Git demande le mot de passe, **colle le token**

---

## Alternative : Utiliser GitHub Desktop

Si tu préfères une interface graphique :

1. Télécharge GitHub Desktop : https://desktop.github.com/
2. Connecte-toi avec ton compte GitHub
3. File → Add Local Repository → Sélectionne `C:\Users\UATM\Desktop\panier_intelligent`
4. Clique sur "Publish repository" pour pousser vers GitHub

---

## Vérification

Une fois le push réussi, vérifie sur GitHub :
- Va sur : https://github.com/knts16/Panier-intelligent
- Tu devrais voir tous tes fichiers !
