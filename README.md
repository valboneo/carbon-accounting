# Carbon Tracker

Une application Rails pour suivre et gérer les émissions de carbone des infrastructures numériques.

## Fonctionnalités

- Liste des infrastructures avec leurs consommations énergétiques et empreintes carbone
- Tri des colonnes
- Export des données en CSV
- Interface bilingue (FR/EN)
- Calcul des totaux de consommation et d'émissions

## Installation

1. Cloner le dépôt :
```bash
git clone https://github.com/valboneo/carbon-accounting.git
cd carbon-accounting
```

2. Installer les dépendances :
```bash
bundle install
yarn install
```

3. Configurer la base de données :
```bash
rails db:create db:migrate
```

4. Lancer l'application :
```bash
./bin/dev
```

## Technologies utilisées

- Ruby on Rails 7
- PostgreSQL
- Tailwind CSS
- Stimulus.js

## Déploiement

1. Créer un nouveau dépôt sur GitHub
2. Initialiser le dépôt local :
```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/pierre/carbon-accounting.git
git push -u origin main
```

## Licence

MIT
