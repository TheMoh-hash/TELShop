<!--Prix special-->
<?php
$marque=array_map(function ($pro){return $pro['marque_article'];},$melanger_produit);
$unique=array_unique($marque);
sort($unique);
shuffle($melanger_produit);

?>

<section id="special-price">
    <div class="container">
        <h4 class="font-rubik font-size-20">Prix Spécial</h4>
        <div id="filters" class="button-group text-right">
            <button class="btn is-checked" data-filter="*">Toutes les Marques</button>
            <?php
            array_map(function ($marque){
                printf('<button class="btn" data-filter=".%s">%s</button>',$marque,$marque);
            },$unique);
            ?>


        <div class="grid">
            <?php array_map(function ($item){ ?>
            <div class="grid-item  border <?php echo $item['marque_article']?? "Marque";?>">
                <div class="item py-2" style="width:200px;">
                    <div class="item py-2">
                        <div class="product font-rale">
                            <a href="<?php printf('%s?id_article=%s','produit.php',$item['id_article'])?>"><img src="<?php echo $item['image_article']?? "./images/produits/samsung/1.webp";?>" alt="product1" class="img-fluid"></a>
                            <div class="text-center">
                                <h6><?php echo $item['nom_article']?? "Inconnue";?></h6>
                                <div class="rating text-warning font-size-12">
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="far fa-star"></i></span>
                                </div>
                                <div class="price py-2">
                                    <span><?php echo $item['prix_article']?? "0";?></span>
                                </div>
                                <button type="submit" class="btn btn-warning font-size-12">Ajoutez au panier</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <?php }, $melanger_produit) ?>




        </div>
    </div>
</section>
<!--!Prix special-->