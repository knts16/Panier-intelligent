# Script pour pousser le code vers GitHub
# Exécute ce script dans PowerShell : .\deploy-to-github.ps1

Write-Host "=== Configuration Git pour Panier Intelligent ===" -ForegroundColor Cyan

# Vérifier si git est installé
try {
    $gitVersion = git --version
    Write-Host "Git trouvé : $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "ERREUR : Git n'est pas installé ou pas dans le PATH" -ForegroundColor Red
    Write-Host "Télécharge Git depuis : https://git-scm.com/download/win" -ForegroundColor Yellow
    exit 1
}

# Aller dans le répertoire du projet
Set-Location $PSScriptRoot

# Initialiser git si pas déjà fait
if (-not (Test-Path .git)) {
    Write-Host "Initialisation du repository Git..." -ForegroundColor Yellow
    git init -b main
}

# Ajouter tous les fichiers
Write-Host "Ajout des fichiers..." -ForegroundColor Yellow
git add .

# Commit
Write-Host "Création du commit..." -ForegroundColor Yellow
git commit -m "Application Panier Intelligent avec base de données SQLite"

# Configurer le remote (remplace si existe déjà)
Write-Host "Configuration du remote GitHub..." -ForegroundColor Yellow
git remote remove origin 2>$null
git remote add origin https://github.com/knts16/Panier-intelligent.git

# Vérifier la connexion
Write-Host "Vérification de la connexion au remote..." -ForegroundColor Yellow
git remote -v

Write-Host "`n=== Prêt à pousser ===" -ForegroundColor Green
Write-Host "Exécute maintenant : git push -u origin main" -ForegroundColor Cyan
Write-Host "Si c'est la première fois, GitHub peut demander une authentification." -ForegroundColor Yellow
