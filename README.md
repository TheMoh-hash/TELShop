# 📱 TelShop - Plateforme de E-commerce (PHP/MySQL)

**TelShop** est un projet de développement web complet conçu pour la vente de smartphones. Cette application utilise une architecture serveur traditionnelle avec **PHP** pour la logique métier et **MySQL** pour la gestion de la base de données.

---

## 🏗 Architecture du Projet
Ce projet est organisé selon une structure modulaire classique :
- **Logique Serveur :** Utilisation de `fonctions.php` pour centraliser les appels de données et le traitement métier.
- **Gestion de Données :** Dossier `database/` contenant les scripts SQL pour l'initialisation et la structure de la boutique.
- **Composants UI :** Architecture basée sur l'inclusion de fichiers (`header.php`, `footer.php`) pour garantir la modularité des pages.
- **Expérience Utilisateur :** Gestion dynamique du panier (`panier.php`) et affichage des détails produits (`produit.php`).

## 🛠 Stack Technique
- **Backend :** PHP (Traitement des formulaires, gestion des sessions).
- **Base de données :** MySQL.
- **Frontend :** HTML5, CSS3 (mise en page via `style.css`), JavaScript (interactivité côté client).

## 🚀 Installation locale
1. Cloner le dépôt : `git clone https://github.com/TheMoh-hash/TELShop.git`
2. Configurer une base de données MySQL via le fichier dans le dossier `database/`.
3. Lancer sur un serveur local (type XAMPP, WAMP ou MAMP).
4. Accéder à `index.php` via votre navigateur.

---
*Développé par ADAM Mohamed*
