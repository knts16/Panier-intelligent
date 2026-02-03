# 🛒 Panier Intelligent

Application de gestion et d'analyse des achats personnels permettant de suivre, analyser et optimiser vos dépenses.

## 📋 Description du Projet

Panier Intelligent est une application web qui permet aux utilisateurs de :
- Enregistrer leurs achats quotidiens
- Consulter l'historique de leurs dépenses
- Identifier leurs produits les plus achetés
- Suivre leur bilan financier

## ✨ Fonctionnalités

### 1. Ajout d'Achat
Formulaire permettant d'enregistrer un nouvel achat avec :
- **Nom du produit** : Description de l'article acheté
- **Prix** : Montant en devise (nombre positif uniquement)
- **Date d'achat** : Date de la transaction

### 2. Historique des Achats
Affichage de la liste complète des courses avec :
- Tri chronologique (du plus récent au plus ancien)
- Vue détaillée de chaque achat
- Filtrage par période (optionnel)

### 3. Analyse "Top Produit"
Calcul et affichage du produit le plus acheté :
- Basé sur le nombre d'occurrences (pas le montant)
- Analyse sur une période sélectionnable
- Visualisation des statistiques

### 4. Bilan Financier
Affichage du montant total des dépenses :
- Calcul automatique sur la liste affichée
- Vue d'ensemble des dépenses
- Suivi budgétaire

## 🛠️ Technologies Envisagées

- **Frontend** : React / Vue.js / Angular
- **Backend** : Node.js / Python / Java
- **Base de données** : PostgreSQL / MongoDB
- **Gestion de projet** : Jira (Scrum/Kanban)
- **Version Control** : Git / GitHub

## 📁 Structure du Projet

```
panier-intelligent/
├── README.md
├── docs/
│   ├── specifications.md
│   ├── architecture.md
│   └── user-stories.md
├── src/
│   ├── frontend/
│   ├── backend/
│   └── database/
└── tests/
```

## 🚀 Démarrage Rapide

### Prérequis
- Node.js (v16+)
- npm ou yarn
- Git

### Installation

```bash
# Cloner le repository
git clone https://github.com/votre-username/panier-intelligent.git

# Accéder au répertoire
cd panier-intelligent

# Installer les dépendances (à venir)
npm install

# Lancer l'application (à venir)
npm start
```

## 📊 Méthodologie de Développement

Ce projet suit une méthodologie Agile avec :
- **Sprints** de 2 semaines
- **Daily standups** pour la synchronisation d'équipe
- **Sprint reviews** et **retrospectives**
- **Backlog** priorisé selon la valeur métier

## 🎯 User Stories Principales

### US-01 : Ajout d'un Achat
**En tant qu'** utilisateur  
**Je veux** pouvoir ajouter un achat avec son nom, prix et date  
**Afin de** garder une trace de mes dépenses

**Critères d'acceptation :**
- Le formulaire contient 3 champs : nom, prix, date
- Le prix doit être un nombre positif
- La date ne peut pas être dans le futur
- Un message de confirmation s'affiche après l'ajout

### US-02 : Consultation de l'Historique
**En tant qu'** utilisateur  
**Je veux** voir la liste de mes achats triée par date  
**Afin de** suivre chronologiquement mes dépenses

**Critères d'acceptation :**
- Les achats sont affichés du plus récent au plus ancien
- Chaque ligne affiche : nom, prix, date
- La liste est scrollable si nombreux achats

### US-03 : Analyse Top Produit
**En tant qu'** utilisateur  
**Je veux** connaître mon produit le plus acheté  
**Afin de** identifier mes habitudes de consommation

**Critères d'acceptation :**
- Le calcul se base sur le nombre d'occurrences
- Une période peut être sélectionnée
- Le produit gagnant est clairement affiché

### US-04 : Bilan Financier
**En tant qu'** utilisateur  
**Je veux** voir le total de mes dépenses  
**Afin de** contrôler mon budget

**Critères d'acceptation :**
- Le total est calculé automatiquement
- Le montant s'affiche avec la devise
- Le calcul correspond à la liste affichée

## 🤝 Contribution

Les contributions sont les bienvenues ! Pour contribuer :

1. Fork le projet
2. Créer une branche feature (`git checkout -b feature/AmazingFeature`)
3. Commit les changements (`git commit -m 'Add some AmazingFeature'`)
4. Push vers la branche (`git push origin feature/AmazingFeature`)
5. Ouvrir une Pull Request

## 📝 Conventions de Code

- Utiliser des noms de variables descriptifs
- Commenter le code complexe
- Suivre les standards ESLint/Prettier
- Écrire des tests unitaires pour les nouvelles fonctionnalités

## 📅 Roadmap

### Phase 1 - MVP (Sprint 1-2)
- ✅ Setup du projet
- [ ] Ajout d'achat (US-01)
- [ ] Historique basique (US-02)

### Phase 2 - Fonctionnalités Core (Sprint 3-4)
- [ ] Top produit (US-03)
- [ ] Bilan financier (US-04)

### Phase 3 - Améliorations (Sprint 5+)
- [ ] Filtres avancés
- [ ] Graphiques et visualisations
- [ ] Export des données
- [ ] Mode hors-ligne

## 📄 Licence

Ce projet est sous licence MIT - voir le fichier [LICENSE](LICENSE) pour plus de détails.

## 👥 Équipe

- **Product Owner** : nesline
- **Scrum Master** : nesline
- **Développeurs** : nesline

## 📞 Contact

Pour toute question ou suggestion, n'hésitez pas à ouvrir une issue sur GitHub.

---

**Version** : 0.1.0  
**Dernière mise à jour** : Février 2026  
**Statut** : 🚧 En développement initial
