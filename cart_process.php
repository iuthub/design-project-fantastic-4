<?php
session_start();
include_once './Content_Manager.php';
$content_manager = new Content_Manager();
$currency = '&#x24;';
############# add products to session #########################
if(isset($_POST["product_id"]))
{
	foreach($_POST as $key => $value){
		$new_product[$key] = filter_var($value, FILTER_SANITIZE_STRING); //create a new product array 
	}
	
	//we need to get product name and price from database.
        
       $product_database = $content_manager->get_product_by_id($new_product['product_id']);
	$product_name = $product_database['product_name'];
        $product_price = $product_database['price'];

		$new_product["product_name"] = $product_name; //fetch product name from database
		$new_product["product_price"] = $product_price;  //fetch product price from database
		
		if(isset($_SESSION["products"])){  //if session var already exist
			if(isset($_SESSION["products"][$new_product['product_id']])) //check item exist in products array
			{
				unset($_SESSION["products"][$new_product['product_id']]); //unset old item
			}			
		}
		
		$_SESSION["products"][$new_product['product_id']] = $new_product;	//update products with new item array	
	
	
 	$total_items = count($_SESSION["products"]); //count total items
	die(json_encode(array('items'=>$total_items))); //output json 

}

################## list products in cart ###################
if(isset($_POST["load_cart"]) && $_POST["load_cart"]==1)
{

	if(isset($_SESSION["products"]) && count($_SESSION["products"])>0){ //if we have session variable
		$cart_box = '<ul class="cart-products-loaded">';
		$total = 0;
		foreach($_SESSION["products"] as $product){ //loop though items and prepare html content
			
			//set variables to use them in HTML content below
			$product_name = $product["product_name"]; 
			$product_price = $product["product_price"];
			$product_id = $product["product_id"];
			$product_qty = $product["product_qty"];
			$product_color = $product["product_color"];
			$product_size = $product["product_size"];
			
			$cart_box .=  "<li> $product_name (Qty : $product_qty | $product_color  | $product_size ) &mdash; $currency ".sprintf("%01.2f", ($product_price * $product_qty)). " <a href=\"#\" class=\"remove-item\" data-code=\"$product_id\">&times;</a></li>";
			$subtotal = ($product_price * $product_qty);
			$total = ($total + $subtotal);
		}
		$cart_box .= "</ul>";
		$cart_box .= '<div class="cart-products-total">Total : '.$currency.sprintf("%01.2f",$total).' <u><a href="view_cart.php" title="Review Cart and Check-Out">Check-out</a></u></div>';
		die($cart_box); //exit and output content
	}else{
		die("Your Cart is empty"); //we have empty cart
	}
}

################# remove item from shopping cart ################
if(isset($_GET["remove_code"]) && isset($_SESSION["products"]))
{
	$product_id   = filter_var($_GET["remove_code"], FILTER_SANITIZE_STRING); //get the product code to remove

	if(isset($_SESSION["products"][$product_id]))
	{
		unset($_SESSION["products"][$product_id]);
	}
	
 	$total_items = count($_SESSION["products"]);
	die(json_encode(array('items'=>$total_items)));
}