<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link href="style.css" rel="stylesheet" type="text/css">
        <title>Online Shop</title>
    </head>
    <body>

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
                    <div class="reg_sign">
                        <?php
                        if (!isset($_SESSION['username'])) {
                            echo "<a class='login_btn' href='login.php?login=register'>Register</a>"
                            . "<a class='login_btn' href='login.php?login=sign_up'>Sign_In</a>";
                        }
                        else {
                            echo "<a class='login_btn' href='admin_client_page.php?'"
                            . "name=" . $_SESSION['email']
                                    . ">" . $_SESSION['username'] . "</a>"
                            . "<a class='login_btn' href='logout.php'>Sign Out</a>";
                        }
                        ?>
                    </div>
                </div>
            </div>
        </div>

        <div class="content">
            <div class="categories">
                <div class="categoriesOne">

                    <a href="categories.php?category=Tops" class="categoriesElement">
                        <div class="categoriesPic" id="tops">
                            <img class="imgItems" src="categories/tops.jpg">
                            <div class="categoriesText">
                                <h3>Tops</h3>
                                <p>View Items</p>
                            </div>
                        </div>
                    </a>

                    <a href="categories.php?category=Dresses" class="categoriesElement">
                        <div class="categoriesPic" id="dresses">
                            <img class="imgItems" src="categories/dresses.jpg">
                            <div class="categoriesText">
                                <h3>Dresses</h3>
                                <p>View Items</p>
                            </div>
                        </div>
                    </a>

                    <a href="categories.php?category=Bottoms" class="categoriesElement">
                        <div class="categoriesPic" id="bottoms">
                            <img class="imgItems" src="categories/bottoms.jpg">
                            <div class="categoriesText">
                                <h3>Bottoms</h3>
                                <p>View Items</p>
                            </div>
                        </div>
                    </a>

                </div>

                <div class="categoriesTwo">

                    <a href="categories.php?category=Accessories" class="categoriesElement">
                        <div class="categoriesPic" id="accessories">
                            <img class="imgItems" src="categories/accessories.jpg">
                            <div class="categoriesText">
                                <h3>Accessories</h3>
                                <p>View Items</p>
                            </div>
                        </div>
                    </a>

                    <a href="categories.php?category=Bags" class="categoriesElement">
                        <div class="categoriesPic" id="bags">
                            <img class="imgItems" src="categories/bags.jpg">
                            <div class="categoriesText">
                                <h3>Bags</h3>
                                <p>View Items</p>
                            </div>
                        </div>
                    </a>

                    <a href="categories.php?category=Shoes" class="categoriesElement">
                        <div class="categoriesPic" id="shoes">
                            <img class="imgItems" src="categories/shoes.jpg">
                            <div class="categoriesText">
                                <h3>Shoes</h3>
                                <p>View Items</p>
                            </div>
                        </div>
                    </a>


                </div>
            </div>


            <div class="hotItems">
                <?php
                for ($i = 0; $i < 5; $i++) {

                    echo "<div class='set'>";

                    for ($j = 0; $j < 4; $j++) {

                        echo "<a class='hotItem' href='product.php'>"
                        . "<img class='hotItemsImg' src='Images/forever.jpg' alt='product'>";
                        echo "<div class='hotItemText'>";
                        echo "<h2>Shop Now</h2>";
                        echo "</div>";
                        echo "</a>";
                    }
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