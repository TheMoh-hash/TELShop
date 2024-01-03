<?php

//Exiger la connexion MySQL
require ('database/DBController.php');

//Exiger la classe produit
require ('database/produit.php');

//Exiger la classe panier
require('database/cart.php');

//DBController OBjet
$db =new DBController();

//Objet Produit
$produit=new produit($db);

//Objet Panier
$cart =new cart($db);



