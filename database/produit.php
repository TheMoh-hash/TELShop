<?php

//utiliser pour recuperer les donnees de produit
class produit
{
    public $db=null;
    public function __construct(DBController $db)
    {
        if (!isset($db->con)) return null;
        $this->db =$db;
    }

    //recuperer les donnees de produit en utilisant  la methode getData
    public function getData($table='produit')
    {
        $result=$this->db->con->query("SELECT * FROM ($table)");

        $resultArray =array();

        //recuperer les donnees de produit un par un
        while ($article = mysqli_fetch_array($result,MYSQLI_ASSOC)){
            $resultArray[]=$article;
        }
        return $resultArray;
    }
}