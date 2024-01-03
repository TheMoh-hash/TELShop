<?php
ob_start();
//inclure le fichier header.php
include ('header.php');

?>

<?php
/*inclure la zone de Banniere*/
include('Modeles/_zone-banniere.php');
/*inclure la zone de Banniere*/

/*inclure le fichier top-ventes.php*/
include('Modeles/_top-ventes.php');
/*inclure le fichier top-ventes.php*/


/*inclure le fichier prix-special.php*/
include('Modeles/_prix-special.php');
/*inclure le fichier prix-special.php*/


/*inclure le fichier banniere-publicitaire.php*/
include('Modeles/_banniere-publicitaire.php');
/*inclure le fichier banniere-publicitaire.php*/


/*inclure le fichier _nouveaux-smartphones.php*/
include('Modeles/_nouveaux-smartphones.php');
/*inclure le fichier _nouveaux-smartphones.php*/

/*inclure le fichier _blog.php*/
include('Modeles/_blog.php');
/*inclure le fichier _nouveaux-smartphones.php*/
?>


<?php
//inclure le fichier footer.php
include ('footer.php');

?>
