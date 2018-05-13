<?php session_start();?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link href="categories.css" rel="stylesheet" type="text/css">
        <link href="style/style.css" rel="stylesheet" type="text/css">
        <title>Categories</title>
    </head>
    <body> 
        <a href ="view_cart.php"> View Cart</a>
        <?php
        include_once './Content_Manager.php';
        $content_manager = new Content_Manager();
        if(isset($_GET['category'])){
        $category = $_GET['category'];
        }else{
            $category = 'Tops';
        }
        $products = $content_manager->get_products_by_category($category);
        ?>
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
                        <li><a href="brands.html">Brands</a></li>
                        <li><a href="sale.html">Sale</a></li>
                        <li><a href="help.html">Help</a></li>
                        <li><a href="about.html">About</a></li>
                    </ul>
                </div>
            </div>
            <div class="headerImgs">
                <div class="categoriesPic">
                    <img class="imgItems" src="categories/tops.jpg">
                </div>

                <div class="categoriesPic">
                    <img class="imgItems" src="Images/topsForever2.jpg">
                </div>

                <div class="categoriesPic" id="bottoms">
                    <img class="imgItems" src="Images/topsForever.jpg">
                </div>
                <div class="headerImgText">
                    <?php echo "<h2>Discover New " . $category . "</h2>"; ?>
                </div>
            </div>

            <div class="subMenu">
                <ul>
                    <li><a href="categories.php?category=Tops" id="tops">Tops</a></li>
                    <li><a href="categories.php?category=Bottoms" id="bottoms">Bottoms</a></li>
                    <li><a href="categories.php?category=Dresses" id="dresses">Dresses</a></li>
                    <li><a href="categories.php?category=Shoes" id="shoes">Shoes</a></li>
                    <li><a href="categories.php?category=Bags" id="bags">Bags</a></li>
                    <li><a href="categories.php?category=Accessories" id="accessories">Accessories</a></li>
                </ul>
            </div>
        </div>
        <div class="content">

            <div class="caption">
                <?php
                echo "<h2 id='demo'>" . $category . "</h2>";
                ?>
            </div>
            <div class="paging">
            </div>

            <div class="items">
                <?php
                $counter = 0;
                for ($i = 0; $i < 10; $i++) {
                    echo "<div class='set'>";

                    for ($j = 0; $j < 4; $j++) {
                        $product_id = $products[$counter]['product_id'];
                        $colors = $content_manager->get_available_colors($product_id);
                        $image_path = $products[$counter]['image_path'] . '/' . $colors[0]['color'] . '/0.jpg';
                        $product_name = $products[$counter]['product_name'];
                        $price = $products[$counter]['price'];
                        echo "<div class='product'>";
                        echo "<a class='item' href='product.php?product_id=$product_id'>"
                        . "<img class='itemsImg' src='$image_path' alt='product'>";
                        echo "<div class='view'>";
                        echo "<h2>View Item</h2>";
                        echo "</div>";
                        echo "</a>";
                        echo "<div class='description'>";
                        echo "<p>" . $product_name . "</p>";
                        echo "<p>Price: " . $price . "</p>";
                        echo "</div>";
                        echo "</div>";
                        $counter++;
                    }
                    echo '<br/>';
                    echo "</div>";
                }
                ?>
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

    </body>
</html>