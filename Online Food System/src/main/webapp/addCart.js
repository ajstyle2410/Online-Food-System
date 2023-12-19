
   function add_cart(fid, fname, fprice) {
	   alert("hello");
	    let cart = localStorage.getItem("cart");

	    if (cart == null) {
	        let foods = [];
	        let food = { foodId: fid, foodName: fname, foodPrice: fprice, foodQuantity: 1 };
	        foods.push(food);
	        localStorage.setItem("cart", JSON.stringify(foods));
	        alert("Cart after adding: " + localStorage.getItem("cart"));
	    } else {
	        let fcart = JSON.parse(cart);
	        let oldFood = fcart.find((item) => item.foodId == fid);

	        if (oldFood) {
	            oldFood.foodQuantity = (oldFood.foodQuantity || 0) + 1; 
	            localStorage.setItem("cart", JSON.stringify(fcart));
	        } else {
	            let food = { foodId: fid, foodName: fname, foodPrice: fprice, foodQuantity: 1 };
	            fcart.push(food);
	            localStorage.setItem("cart", JSON.stringify(fcart));
	        }
	    }
	    updateCart();
	}


function updateCart() {
   let cartString = localStorage.getItem("cart");
   let cart = JSON.parse(cartString);
   if (cart == null || cart.length == 0) {
       $(".cart-items").html("(0)");
       $(".cart-body").html("<h3>Cart does not have any items</h3>");
/*        $(".checkout-btn").addClass('disabled');
 */ 
       $(".checkout-btn").attr('disabled',true);
   } else {
       let no = cart.length;
       $(".cart-items").html(cart.length);
   }

   let table = "<table class='table'>" +
       "<thead>" +
       "<tr>" +
       "<th scope='col'>Food Id</th>" +
       "<th scope='col'>Food Name</th>" +
       "<th scope='col'>Food Price</th>" +
       "<th scope='col'>Quantity</th>" +
       "<th scope='col'>Total</th>" +
       "</tr>" +
       "</thead>" +
       "<tbody>";

   let totalPrice = 0;
   cart.map((item) => {
       let quantity = parseInt(item.foodQuantity, 10);
       quantity = isNaN(quantity) ? 0 : quantity; 

       table += "<tr>" +
           "<th scope='row'>" + item.foodId + "</th>" +
           "<td>" + item.foodName + "</td>" +
           "<td>" + item.foodPrice + "</td>" +
           "<td>" + quantity + "</td>" +
           "<td>" + item.foodPrice * quantity + "</td>" +
           "<td><button class='btn btn-danger btn-sm' onclick='deletFoodCart("+ item.foodId +")'>remove</button></td>" +
           "</tr>";

       totalPrice += item.foodPrice * quantity;
       
   });

   table += "<tr><td colspan='5'>Total Order : " + totalPrice + "</td></tr></tbody></table>";
   $(".cart-body").html(table);
   $(".checkout-btn").attr('disabled',false);

}

  function deletFoodCart(fid)
  {
	  let cart =JSON.parse(localStorage.getItem('cart'));
	  let newCart = cart.filter((item)=>item.foodId!=fid)
	  localStorage.setItem('cart',JSON.stringify(newCart))
	  updateCart();
  }
  
  function addToCart()
  {
	    window.location	="CheckOut.jsp";
  }

 