<?php
session_start();
ob_start();
include_once './Admin.php';
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link href="admin_client_page.css" rel="stylesheet" type="text/css">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>
        <!--        <link href="bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css">-->
        <title>Product</title>
    </head>
    <body>

        <?php
        $admin = new Admin();
        $clients = $admin->get_all_clients();
        header(('Refresh: 3; URL = index.php'));
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
                $result = $admin->sign_up($_POST['email'], $_POST['password']);
                echo "<h2>Welcome, dear " . $result['name'] . "</h2>";
                $_SESSION['username'] = $result['name'];
                $_SESSION['user_id'] = $result['user_id'];
                echo $_SESSION['email'];
                if ($result['type'] == "admin") {
                    $_SESSION['type'] = "admin";
                    
                } else {
                    $_SESSION['type'] = "client";
                }
                
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