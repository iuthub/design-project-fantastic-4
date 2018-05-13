<?php
session_start(); //start session
?>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Review Your Cart Before Buying</title>
<link href="style/style_cart.css" rel="stylesheet" type="text/css">
</head>
<body>
<h3 style="text-align:center">Review Your Cart Before Buying</h3>
<form action="order.php" method="post">
<?php
if(isset($_SESSION["products"]) && count($_SESSION["products"])>0){
	$total 	= 0;
	$cart_box = '<ul class="view-cart">';
        $currency = '&#x24;';
	foreach($_SESSION["products"] as $product){ //Print each item, quantity and price.
		$product_name = $product["product_name"];
		$product_qty = $product["product_qty"];
		$product_price = $product["product_price"];
		$product_code = $product["product_id"];
		$product_color = $product["product_color"];
		$product_size = $product["product_size"];

		$item_price 	= sprintf("%01.2f",($product_price * $product_qty));  // price x qty = total item price
		
		$cart_box 		.=  "<li> $product_name (Qty : $product_qty | $product_color | $product_size) <span> $currency. $item_price </span></li>";
		
		$subtotal 		= ($product_price * $product_qty); //Multiply item quantity * price
		$total 			= ($total + $subtotal); //Add up to total price         
	}
	
	
	//Print Shipping, VAT and Total
	$cart_box .= "<li class=\"view-cart-total\">". $currency.$total."</li>";
	$cart_box .= "</ul>";
	
	echo $cart_box;
        ?>


    <?php
    echo "<input type='hidden' name='total_price' value=" . $total . ">";
    ?>
    <input type="submit" name="submit" value="Order Now"/>
</form>
<?php
}else{
	echo "Your Cart is empty";
}
?>


</body>
</html>