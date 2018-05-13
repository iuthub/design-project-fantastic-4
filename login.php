<?php
include_once './Admin.php';
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link href="order.css" rel="stylesheet" type="text/css">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>

        <title>Product</title>
    </head>
    <body>

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
                if ($_GET['login'] == "register") {
                    echo "<div class='form'>
                    <form action='' method='post'>
                        <fieldset>
                            <legend>Registration</legend>
                            <input type='text' name='name' placeholder='Full Name'/>
                            <input type='password' name='password' placeholder='Password' />
                            <input type='email' name='email' placeholder='Email' />
                            <input type='tel' name='phone' placeholder='Phone Number' />
                            <input type='submit' value='Register'/>
                        </fieldset>";
                }
                
                else if ($_GET['login'] == "sign_up") {
                
                echo "<div class='form'>
                    <form action='validate.php' method='post'>
                        <fieldset>
                            <legend>Sign In</legend>
                            <input type='text' name='email' placeholder='Email'/>
                            <input type='password' name='password' placeholder='Password' />
                            <input type='submit' value='Sign Up'/>
                        </fieldset>";
                }
                ?>
                </form>
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

<?php
$admin = new Admin;
$admin->create_client($_POST['name'], $_POST['password'], $_POST['email'], $_POST['phone']);
?>
