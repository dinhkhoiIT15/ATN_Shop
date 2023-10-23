<?php
class Connect
{
    public $server;
    public $dbName;
    public $username;
    public $password;

    public function __construct()
    {
        $this->server = 'hwr4wkxs079mtb19.cbetxkdyhwsb.us-east-1.rds.amazonaws.com';
        $this->dbName = 'tc5jncns603y2s75';
        $this->username = 'zxvv73ie7op90932';
        $this->password = 'hfqu828ah73nd15r';
    }

    //Option 1: mySQL
    function connectToMySQL(): mysqli
    {
        $conn = new mysqli(
            $this->server,
            $this->username, $this->password, $this->dbName
        );

        if ($conn->connect_error) {
            die("Failed " . $conn->connect_error);
        } else {
            //echo "Connect!";
        }
        return $conn;
    }

    //Option 2: PDO
    function connectToPDO(): PDO
    {
        try {
            $conn = new PDO("mysql:host=$this->server;dbname=$this->dbName", $this->username, $this->password);
            //echo "Connect! PDO";
        } catch (PDOException $e) {
            die("Failed " . $e);
        }
        return $conn;
    }
}
?>