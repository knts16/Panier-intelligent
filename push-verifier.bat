@echo off
chcp 65001 >nul
echo ========================================
echo  Push vers GitHub - Mode vérification
echo ========================================
echo.

cd /d "%~dp0"

echo [1] Git installe ?
git --version
if errorlevel 1 (
    echo ERREUR: Installe Git depuis https://git-scm.com/download/win
    pause
    exit /b 1
)
echo.

echo [2] Initialisation...
if not exist .git (
    git init -b main
)
echo.

echo [3] Remote = GitHub
git remote remove origin 2>nul
git remote add origin https://github.com/knts16/Panier-intelligent.git
git remote -v
echo.

echo [4] Ajout de TOUS les fichiers...
git add -A
echo.

echo [5] Fichiers qui seront commits (doivent apparaitre ici) :
git status
echo.

echo [6] Creation du commit...
git commit -m "Panier Intelligent - application complete avec base de donnees"
if errorlevel 1 (
    echo.
    echo Pas de nouveau commit (fichiers deja commits). On pousse quand meme.
) else (
    echo Commit cree.
)
echo.

echo [7] PUSH vers GitHub...
echo.
echo Tu vas etre demande :
echo   - "Username for 'https://github.com':"  ^> tape: knts16
echo   - "Password for 'https://knts16@github.com':"  ^> colle ton JETON (pas ton mot de passe)
echo.
git push -u origin main --verbose

if errorlevel 1 (
    echo.
    echo ===== ECHEC DU PUSH =====
    echo.
    echo Essaie avec le jeton dans l'URL (remplace TON_JETON par ton token) :
    echo   git remote set-url origin https://knts16:TON_JETON@github.com/knts16/Panier-intelligent.git
    echo   git push -u origin main
    echo.
    echo Puis pour securite, enleve le jeton de l'URL :
    echo   git remote set-url origin https://github.com/knts16/Panier-intelligent.git
) else (
    echo.
    echo ===== SUCCES =====
    echo Ouvre: https://github.com/knts16/Panier-intelligent
    echo Clique sur le dossier ou rafraichis (F5). Les fichiers doivent etre la.
)

echo.
pause
