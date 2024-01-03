<?php


class DBController
{
    //Proprieté de connexion de la base de données
    protected $host='localhost';
    protected $user='root';
    protected $password='';
    protected $database='TelShop';

    //Proprieté de connection
    public $con=null;
    //Appel du constructeur
    public function __construct()
    {
       $this->con =mysqli_connect($this->host,$this->user,$this->password,$this->database);
       if ($this->con->connect_error){
           echo "fail".$this->con->connect_error;
       }

    }

    public function __destruct(){
        $this->closeConnection();
    }

    //Pour fermer la connexion MySQL
    protected function closeConnection()
    {
        if ($this->con !=null){
            $this->con->close();
            $this->con =null;
        }
    }
}


