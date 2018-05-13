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
        $clients = array("client1", "client2", "client3");
        $client_id = "1";
        $client_name = "1";
        $client_phone = "1";
        $client_email = "1";
        $client_address = "1";
        $client_balance = "1";

        $order_id = "1";
        $order_status = "1";
        $order_holder = "1";

        $product_id = "1";
        $product_name = "1";
        $product_price = "1";
        $product_category = "1";
        $product_brand = "1";
        $product_size = "1";
        $product_color = "1";
        $product_image_path = "1";
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
                 <div class="products">
                    <table>
                        <caption>Product</caption>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Category</th>
                            <th>Brand</th>
                            <th>Price</th>
                            <th>Size</th>
                            <th>Color</th>
                        </tr>
                        <?php
                        
                            for ($i = 0; $i < sizeof($clients); $i++) {
                                echo "<tr>";
                                echo "<td>" . $product_id . "</td>";
                                echo "<td>" . $product_name . "</td>";
                                echo "<td>" . $product_category . "</td>";
                                echo "<td>" . $product_brand . "</td>";
                                echo "<td>" . $product_price . "</td>";
                                echo "<td>" . $product_size . "</td>";
                                echo "<td>" . $product_color . "</td>";
                                echo "</tr>";
                            }
                            ?>        
                    </table>
                </div>
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