# Instructions de Déploiement - Panier Intelligent

## Étape 1 : Pousser le code vers GitHub

### Option A : Utiliser le script PowerShell (recommandé)

1. Ouvre PowerShell dans le dossier `panier_intelligent`
2. Exécute :
   ```powershell
   .\deploy-to-github.ps1
   ```
3. Ensuite, pousse le code :
   ```powershell
   git push -u origin main
   ```

### Option B : Commandes manuelles

Si Git est installé, exécute ces commandes dans PowerShell :

```powershell
cd C:\Users\UATM\Desktop\panier_intelligent

# Initialiser git (si pas déjà fait)
git init -b main

# Ajouter tous les fichiers
git add .

# Créer le commit
git commit -m "Application Panier Intelligent avec base de données SQLite"

# Configurer le remote GitHub
git remote add origin https://github.com/knts16/Panier-intelligent.git

# Pousser le code
git push -u origin main
```

**Note** : Si GitHub demande une authentification :
- Utilise un **Personal Access Token** (PAT) au lieu de ton mot de passe
- Crée un PAT ici : https://github.com/settings/tokens
- Sélectionne les permissions : `repo` (accès complet aux repositories)

---

## Étape 2 : Déployer sur Render

1. **Va sur Render** : https://render.com
   - Crée un compte (ou connecte-toi avec GitHub)

2. **Créer un nouveau Web Service** :
   - Clique sur "New" → "Web Service"
   - Connecte ton repository GitHub `knts16/Panier-intelligent`

3. **Configuration** :
   - **Name** : `panier-intelligent` (ou autre nom)
   - **Environment** : `Python 3`
   - **Region** : Choisis la région la plus proche (ex: Frankfurt)
   - **Branch** : `main`
   - **Root Directory** : (laisse vide)
   - **Build Command** : `pip install -r requirements.txt`
   - **Start Command** : `gunicorn wsgi:app`
   - **Plan** : `Free`

4. **Variables d'environnement** (optionnel mais recommandé) :
   - Clique sur "Advanced" → "Add Environment Variable"
   - **Key** : `SECRET_KEY`
   - **Value** : Génère une clé secrète (exécute dans PowerShell) :
     ```powershell
     python -c "import secrets; print(secrets.token_hex(32))"
     ```

5. **Créer le service** :
   - Clique sur "Create Web Service"
   - Render va automatiquement builder et déployer ton application

---

## Étape 3 : Obtenir le lien

Après quelques minutes (2-5 min), Render affichera :
- ✅ **Status** : Live
- 🌐 **URL** : `https://panier-intelligent-xxxx.onrender.com`

**C'est ton lien public !** Partage-le avec qui tu veux.

---

## Notes importantes

- ⚠️ **Plan gratuit** : L'app peut s'endormir après 15 min d'inactivité
- ⏱️ **Premier démarrage** : Peut prendre 30-60 secondes après une période d'inactivité
- 💾 **Base de données** : SQLite est persistée sur le disque de Render (gratuit)

---

## Vérification

Une fois déployé, teste :
1. ✅ Ajouter un achat
2. ✅ Voir l'historique
3. ✅ Voir le top produit
4. ✅ Voir le bilan financier

---

## Support

Si tu rencontres des problèmes :
- Vérifie les logs dans Render Dashboard → Logs
- Assure-toi que tous les fichiers sont bien commités sur GitHub
- Vérifie que `requirements.txt` contient toutes les dépendances
