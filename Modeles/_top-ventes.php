<!--!Top Des Ventes-->
<?php
$melanger_produit = $produit->getData();
shuffle($melanger_produit);

//request method post
if ($_SERVER['REQUEST_METHOD'] =="POST"){
    //appel de la methode addToCart
    $cart->addToCart($_POST['id_article'],$_POST['id_utilisateur']);
}
?>
<section id="top-sale">
    <div class="container py-5">
        <h4 class="font-rubik font-size-20">Top des ventes</h4>
        <hr>
        <!--Owl Carousel-->
        <div class="owl-carousel owl-theme">
            <?php foreach ($melanger_produit as $item){?>
            <div class="item py-2">
                <div class="product font-rale">
                    <a href="<?php printf('%s?id_article=%s','produit.php',$item['id_article'])?>"><img src="<?php echo $item['image_article'] ?? "./images/produits/samsung/1.webp"; ?>" alt="produit1" class="img-fluid"></a>
                    <div class="text-center">
                        <h6><?php echo $item['nom_article'] ?? "Inconnue"; ?></h6>
                        <div class="rating text-warning font-size-20">
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="far fa-star"></i></span>
                        </div>
                        <div class="price py-2">
                            <span><?php echo $item['prix_article'] ?? '0'; ?></span>
                        </div>
                        <form method="post">
                            <input type="hidden" name="id_article" value="<?php echo $item['id_article']?? '1';?>">
                            <input type="hidden" name="id_utilisateur" value="<?php echo 1; ?>">
                            <button type="submit" name="top_ventes_submit" class="btn btn-warning font-size-12">Ajoutez au panier</button>
                        </form>
                    </div>
                </div>
            </div>
            <?php }//Fermerture de chaque fonction?>
        </div>
        <!--Owl Carousel-->
    </div>
</section>
<!--!Top Des Ventes-->
