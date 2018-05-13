<?php session_start()?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link href="product_overview.css" rel="stylesheet" type="text/css">
        <!--        <link href="bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css">-->

        <link href="style/style_cart.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
        <script>
            $(document).ready(function () {
                $(".form-item").submit(function (e) {
                    var form_data = $(this).serialize();
                    var button_content = $(this).find('button[type=submit]');
                    button_content.html('Adding...');
                    $.ajax({
                        url: "cart_process.php",
                        type: "POST",
                        dataType: "json",
                        data: form_data
                    }).done(function (data) {
                        $("#cart-info").html(data.items);
                        button_content.html('Add to Cart');
                        alert("Item added to Cart!");
                        if ($(".shopping-cart-box").css("display") == "block") {
                            $(".cart-box").trigger("click");
                        }
                    })
                    e.preventDefault();
                });
                
                $(".cart-box").click(function (e) {
                    e.preventDefault();
                    $(".shopping-cart-box").fadeIn();
                    $("#shopping-cart-results").html('<img src="images/ajax-loader.gif">');
                    $("#shopping-cart-results").load("cart_process.php", {"load_cart": "1"});
                });

                $(".close-shopping-cart-box").click(function (e) {
                    e.preventDefault();
                    $(".shopping-cart-box").fadeOut();
                });

                $("#shopping-cart-results").on('click', 'a.remove-item', function (e) {
                    e.preventDefault();
                    var pcode = $(this).attr("data-code");
                    $(this).parent().fadeOut();
                    $.getJSON("cart_process.php", {"remove_code": pcode}, function (data) {
                        $("#cart-info").html(data.items);
                        $(".cart-box").trigger("click");
                    });
                });

            });
        </script>
        <title>Product</title>
    </head>
    <body>
      <a href="#" class="cart-box" id="cart-info" title="View Cart">
<?php
if(isset($_SESSION["products"])){
    echo count($_SESSION["products"]);
}else{
    echo 0;
}
?>
</a>
<div class="shopping-cart-box">
<a href="#" class="close-shopping-cart-box" >Close</a>
<h3>Your Shopping Cart</h3>
    <div id="shopping-cart-results">
    </div>
</div>
        <?php
        $shipping_cost      = 1.50; //shipping cost
$taxes              = array( //List your Taxes percent here.
                            'VAT' => 12,
                            'Service Tax' => 5,
                            'Other Tax' => 10
                            );
        include_once './Content_Manager.php';
        $content_manager = new Content_Manager();
        $product_id = $_GET['product_id'];
        $product = $content_manager->get_product_by_id($product_id);
        $product_name = $product['name'];
        $product_price = $product['price'];
        $product_colors = $content_manager->get_available_colors($product_id);
        $colors = $content_manager->get_available_colors($product_id);
        $sizes = array("XS", "S", "M", "L", "XL");
        $shortDesc = $product['short_description'];
        $content_care_array = explode(' -', $product['content_care']);
        $size_fit = $product['size_fit'];
        $size_fit_array = explode(' - ', $size_fit);
        $category = $product['category'];
        $amount_of_size = array("XS" => 10, "S" => 10, "M" => 10, "L" => 10, "XL" => 10);
        $image_path = 'images/' . $category . '/' . $product_id . $products[$counter]['image_path'] . '/' . $colors[0]['color'] . '/0.jpg';
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
                <h1>Overview</h1>
                <div class="overview">

                    <div class="container_images">
                        <img class="images" src="<?php echo $image_path ?>" alt="product">
                    </div>
                    <div class="container_parameters">
                        <div class="parameters">
                            <div class="parameter" id="name">
                                <?php echo "<h3>" . $product_name . "</h3>" ?>
                            </div>
                            <div class="parameter" id="price">
                                <?php echo "<h4>" . $product_price . " $" . "</h4>" ?>
                            </div>
                            <h3>Colors:</h3>
                            <div class="parameter" id="colors">
                                <ul>
                                    <?php
                                    for ($i = 0; $i < sizeof($product_colors); $i++) {
                                        echo "<li>" . "<input id='$product_colors[$i]' type='radio' name='choose_color'>"
                                        . "<label for='$product_colors[$i]['color']'>" . $product_colors[$i]['color'] . "</label></li>";
                                    }
                                    ?>

                                </ul>
                            </div>
                            <h3>Sizes:</h3>
                            <!--                        <div class="parameter" id="sizes">
                                                        <ul>
                                                            <li><input id="XS" type='radio' name='choose_size' value="123">
                                                                <label for='XS'>XS</label></li>
                                                            <li><input id="S" type='radio' name='choose_size' value="234">
                                                                <label for='S'>S</label></li>
                                                            <li><input id="M" type='radio' name='choose_size'>
                                                                <label for='M'>M</label></li>
                                                            <li><input id="L" type='radio' name='choose_size'>
                                                                <label for='L'>L</label></li>
                                                            <li><input id="XL" type='radio' name='choose_size'>
                                                                <label for='XL'>XL</label></li>
                                                        </ul>
                                                    </div>-->
                            <!--                        <div class="parameter" id="amounts_buttons">
                                                        <div id="amounts">
                                                            <select>
                            <?php
//                            $j = 1;
//                            for ($i = 0; $i < sizeof($amount_of_size); $i++) {
//                                echo "<option>" . $j . "</option>";
//                                $j++;
//                            }
                            ?>
                                                            </select>
                                                        </div>
                                                        <div id="add">-->
                            <form class="form-item">
                                <div class="item-box">

                                    <div>
                                        Qty :
                                        <select name="product_qty">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                        </select>
                                    </div>

                                    <div>
                                        Size :
                                        <select name="product_size">
                                            <option value="M">XS</option>
                                            <option value="M">S</option>
                                            <option value="M">M</option>
                                            <option value="XL">L</option>
                                            <option value="XXL">XL</option>

                                        </select>
                                    </div>

                                    <input name="product_id" type="hidden" value="<?php echo $product_id ?>">
                                    <button type="submit">Add to Cart</button>
                                </div>
                            </form>
<!--                            <a href="bag.php?size="> Add To Bag</a>
                            <a href="Wishlist.php">Add To Wishlist</a>-->
                        </div>
                    </div>
                </div>
                <div class="description">
                    <div class="shortDesc">
                        <h3>Description: </h3><br/>
                        <?php
                        echo "<p>" . $shortDesc . "</p>";
                        ?>
                    </div>
                    <div class="content_care">
                        <h3>Content Care: </h3><br/>
                        <?php
                        for ($i = 0; $i < sizeof($content_care_array); $i++) {
                            echo "<p>" . $content_care_array[$i] . "</p>";
                        }
                        ?>
                    </div>
                    <div class="size_fit">
                        <h3>Size Fit: </h3><br/>
                        <?php
                        for ($i = 0; $i < sizeof($size_fit_array); $i++) {
                            echo "<p>" . $size_fit_array[$i] . "</p>";
                        }
                        ?>
                    </div>
                </div>
            </div>
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