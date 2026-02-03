@echo off
echo ========================================
echo  Commit et Push vers GitHub
echo ========================================
echo.

cd /d "%~dp0"

echo [1/8] Verification de Git...
git --version >nul 2>&1
if errorlevel 1 (
    echo ERREUR: Git n'est pas installe ou pas dans le PATH
    echo Telecharge Git depuis: https://git-scm.com/download/win
    pause
    exit /b 1
)
echo OK: Git trouve
echo.

echo [2/8] Initialisation Git (si necessaire)...
if not exist .git (
    git init -b main
    echo Repository Git initialise
) else (
    echo Repository Git deja initialise
)
echo.

echo [3/8] Ajout des fichiers...
git add .
echo Fichiers ajoutes
echo.

echo [4/8] Creation du commit...
git commit -m "Application Panier Intelligent avec base de donnees SQLite et deploiement"
if errorlevel 1 (
    echo ATTENTION: Aucun changement a commiter ou commit deja fait
) else (
    echo Commit cree avec succes
)
echo.

echo [5/8] Configuration du remote GitHub...
git remote remove origin 2>nul
git remote add origin https://github.com/knts16/Panier-intelligent.git
echo Remote configure: https://github.com/knts16/Panier-intelligent.git
echo.

echo [6/8] Verification du remote...
git remote -v
echo.

echo [7/8] Push vers GitHub...
echo ATTENTION: GitHub va demander une authentification
echo Utilise un Personal Access Token (PAT) au lieu du mot de passe
echo Cree un PAT ici: https://github.com/settings/tokens
echo.
git push -u origin main

if errorlevel 1 (
    echo.
    echo ERREUR lors du push
    echo Verifie:
    echo  1. Que Git est bien installe
    echo  2. Que tu as un Personal Access Token
    echo  3. Que le repository existe sur GitHub
) else (
    echo.
    echo ========================================
    echo  SUCCES! Code pousse vers GitHub
    echo ========================================
    echo.
    echo Voir ton code sur: https://github.com/knts16/Panier-intelligent
)

echo.
pause
