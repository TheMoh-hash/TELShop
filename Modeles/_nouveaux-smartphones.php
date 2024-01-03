<!--Nouveaux Smartphones -->
<?php
shuffle($melanger_produit);

?>

<section id="new-phones">
    <div class="container">
        <h4 class="font-rubik font-size-20">Nouveaux Smartphones</h4>
        <hr>

        <!--Owl Carousel-->
        <div class="owl-carousel owl-theme">
            <?php foreach ($melanger_produit as $item){?>
                <div class="item py-2 bg-light">
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
                            <button type="submit" class="btn btn-warning font-size-12">Ajoutez au panier</button>
                        </div>
                    </div>
                </div>
            <?php }//Fermerture de chaque fonction?>
        </div>
        <!--Owl Carousel-->
    </div>
</section>
<!--!Nouveaux Smartphones-->