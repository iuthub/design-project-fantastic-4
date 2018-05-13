<?php
session_start();
include_once './Admin.php';
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link href="admin_client_page.css" rel="stylesheet" type="text/css">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>
<!--                <link href="bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css">-->
        <title>Product</title>
    </head>
    <body>

        <?php
        $admin = new Admin();
        $clients = $admin->get_all_clients();

//        $order_id = "1";
//        $order_status = "1";
//        $order_holder = "1";
//
//        $product_id = "1";
//        $product_name = "1";
//        $product_price = "1";
//        $product_category = "1";
//        $product_brand = "1";
//        $product_size = "1";
//        $product_color = "1";
//        $product_image_path = "1";
        ?>

        <div class="main">
            <div class="header">
                <div class="menuBar">
                    <div class="menuItems">
                        <ul>
                            <li><a href="index.php">Home</a></li>
                            <div class="dropdown">
                                <li class="dropdownBtn">Categories</a>
                                    <div class="dropdown-content">
                                        <a href="categories.php?category=Tops">Tops</a>
                                        <a href="categories.php?category=Bottoms">Bottoms</a>
                                        <a href="categories.php?category=Dresses">Dresses</a>
                                        <a href="categories.php?category=Shoes">Shoes</a>
                                        <a href="categories.php?category=Bags">Bags</a>
                                        <a href="categories.php?category=Accessories">Accessories</a>
                                    </div>
                                </li>
                            </div>
                            <li> <a href="brands.html">Brands</a></li>
                            <li> <a href="sale.html">Sale</a></li>
                            <li> <a href="help.html">Help</a></li>
                            <li> <a href="about.html">About</a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="content">
                <?php
                    echo "<div class='clients'>
                    <table>
                        <caption>Cients</caption>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Balance</th>
                            <th>View Orders</th>
                        </tr>";
                    for ($i = 0; $i < sizeof($clients); $i++) {
                        echo "<tr>";
                        echo "<td>" . $clients[$i]['user_id'] . "</td>";
                        echo "<td>" . $clients[$i]['name'] . "</td>";
                        echo "<td>" . $clients[$i]['email'] . "</td>";
                        echo "<td>" . $clients[$i]['phone'] . "</td>";
                        echo "<td>" . $clients[$i]['balance'] . "</td>";
                        echo "<td>" . "<a href='client_order.php?'"
                        . "client_id=" . $clients[$i]['user_id'] . "&"
                        . "client_name=" . $clients[$i]['name'] . "&"
                        . "client_phone=" . $clients[$i]['phone'] . "&"
                        . "client_email=" . $clients[$i]['email'] . "&"
                        . "client_balance=" . $clients[$i]['balance'] . ""
                        . ">view</a></td>";
                        echo "</tr>";
                    }
                    echo "</table>";
                    echo "</div>";
                ?>

            </div>

            <div class="footer">
                <div class="shop">
                    <h3>Shop</h3>
                    <p>some content</p>
                </div>
                <div class="about">
                    <h3>Infromation</h3>
                    <a href="about.php">About</a><br/>
                    <a href="returns.php">Returns</a><br/>
                    <a href="wish_list.php">Wish List</a><br/>
                    <a href="contact_us.php">Contact Us</a><br/>
                </div>
                <div class="follow">
                    <h3>Follow Us on</h3>
                    <a href="http://www.facebook.com">Facebook</a><br/>
                    <a href="http://www.instagram.com">Instagram</a><br/>
                    <a href="http://www.twitter.com">Twitter</a><br/>
                </div>
                <div class="subscribe">
                    <h3>Subscribe!</h3>
                    <input type="text"/>
                    <a id="subscribe_button" href="registration_login.php">Subscribe</a>
                </div>
            </div>
        </div>

    </body>
</html>