<?php 
require_once('connect.php');
require_once('header.php');

$c = new Connect();
$dbLink = $c->connectToPDO();

$sql = "SELECT * FROM `shop`";
$re = $dbLink->query($sql);
?>

<div class="container">
    <div class="container-fluid">
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Shop ID</th>
                    <th scope="col">Shop Name</th>
                    <th scope="col">City</th>
                    <th scope="col">Address</th>
                </tr>
            </thead>

            <?php
            while ($row = $re->fetch(PDO::FETCH_ASSOC)) {
                echo "<tr>";
                echo "<td>" . $row["shop_id"] ."</td>";
                echo "<td>" . $row["shop_name"] ."</td>";
                echo "<td>" . $row["city"] ."</td>";
                echo "<td>" . $row["address"] ."</td>";
                echo "<tr>";
            }
            ?>
        </table>
    </div>
</div>