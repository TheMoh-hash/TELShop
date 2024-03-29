<?php

// php cart class
class cart
{
    public $db = null;

    public function __construct(DBController $db)
    {
        if (!isset($db->con)) return null;
        $this->db = $db;
    }

    // insert into cart table
    public function insertIntoCart($params = null, $table = "cart")
    {
        if ($this->db->con != null) {
            if ($params != null) {
                // "Insert into cart(user_id) values (0)"
                // get table columns
                $columns = implode(',', array_keys($params));

                $values = implode(',', array_values($params));

                // create sql query
                $query_string = sprintf("INSERT INTO %s(%s) VALUES(%s)", $table, $columns, $values);

                // execute query
                return $this->db->con->query($query_string);
            }
        }
    }

    // to get user_id and item_id and insert into cart table
    public function addToCart($userid, $itemid)
    {
        if (isset($userid) && isset($itemid)) {
            $params = array(
                "id_utilisateur" => $userid,
                "id_article" => $itemid
            );

            // insert data into cart
            $result = $this->insertIntoCart($params);
            if ($result) {
                // Reload Page
                header("Location: " . $_SERVER['PHP_SELF']);
            }
        }
    }
}


