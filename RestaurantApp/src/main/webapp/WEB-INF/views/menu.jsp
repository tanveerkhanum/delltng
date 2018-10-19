<!DOCTYPE html>
<%@page import="com.training.spring.model.Item"%>
<%@page import="java.util.List"%>
<html>
<head>

	<meta charset="utf-8">
	<title>Dropdowns 3: Prettying it up</title>
	<style>
		* {
			margin: 0;
			padding: 0;
		}
		
		#itemname{
		
    	left: 1px;
    	
		
		
		}
		#itemprice{
		left:10px;
		}
	
		body {
		
		background-image:url("resources/images/final6.jpg");
		background-size:auto;
		font: 300 15px/1.5 "Helvetica Neue", helvetica, arial, sans-serif; 
			 background: #333;  
			margin: 15px;
		}
	
	  article {
			width: 600px;
			margin: 0 auto;
			background-image:url("resources/images/foodie.jpg");
			color: #fff;
			border-radius: 5px;
			box-shadow: 0 0 15px 2px #444;
		}
	 
		section {
			clear: center;
		}
	
		h1 {
			font-size: 45px;
			font-weight: 100;
			letter-spacing: 15px;
			text-align: center;
		}

		h1, #main_content, #dog_link {
			padding: 15px;
		}

		p {
			margin: 15px 0;
		}
	
		a {
			color: #06c;
		}
	
		#main_nav ul {
			background: white;
			float: left;
			-webkit-transition: .5s;
			transition: .5s;
		}
	
		#main_nav li {
			float: left;
			position: relative;
			width: 150px;
			list-style: none;
			-webkit-transition: .5s;
			transition: .5s;
		}
	
		#main_nav > ul > li > a, h1 {
			text-transform: uppercase;
		}
	
		#main_nav a {
			display: block;
			text-decoration: none;
			padding: 5px 15px;
			color: #000;
		}

		#main_nav ul ul {
			position: absolute;
			left: 0;
			top: 100%;
			visibility: hidden;
			opacity: 0;
		}
	
		#main_nav ul ul ul {
			left: 100%;
			top: 0;
		}
	
		#main_nav li:hover, #main_nav li:hover li {
			background: #ddd;
		}
	
		#main_nav li li:hover, #main_nav li li:hover li {
			background: #bbb;
		}
	
		#main_nav li li li:hover {
			background: #999;
		}
	
		#main_nav li:hover > ul {
			visibility: visible;
			opacity: 1;
		}
		
				
				.button {
		  background-color: Grey;  
		  border-radius: 5px;
		  color: white;
		  padding: .5em;
		  text-decoration: none;
		}
		
		.button:focus,
		.button:hover {
		  background-color: Teal;
		  color: White;
		}
		
		.content {
		  display: none;
		  margin: 1em 0;
		}
		
		.content.active,
		.no-js .content {
		  display: block;
		}
		.tg{
		color:white;}
		
		
		
		
		
		
		.input-number-group {
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-justify-content: center;
      -ms-flex-pack: center;
          justify-content: center;
}

.input-number-group input[type=number]::-webkit-inner-spin-button,
.input-number-group input[type=number]::-webkit-outer-spin-button {
  -webkit-appearance: none;
          appearance: none;
}

.input-number-group .input-group-button {
  line-height: calc(80px/2 - 5px);
}

.input-number-group .input-number {
  width: 20px;
  padding: 0 12px;
  vertical-align: top;
  text-align: center;
  outline: none;
  display: block;
  margin: 0;
}

.input-number-group .input-number,
.input-number-group .input-number-decrement,
.input-number-group .input-number-increment {
  border: 1px solid #cacaca;
  height: 20px;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  border-radius: 0;
}

.input-number-group .input-number-decrement,
.input-number-group .input-number-increment {
  display: inline-block;
  width: 20px;
  background: #e6e6e6;
  color: #0a0a0a;
  text-align: center;
  font-weight: bold;
  cursor: pointer;
  font-size: 2rem;
  font-weight: 400;
}

.input-number-group .input-number-decrement {
  margin-right: 0.3rem;
}

.input-number-group .input-number-increment {
  margin-left: 0.3rem;
}
		
	</style>
	<!--[if lt IE 9]><script src="/r10/html5shiv.js"></script><![endif]-->
	</script>
</head>
<body >
	<article>
		<h1>Eat Tree</h1>

		<nav id="main_nav">
		<ul>
			<li>
					<a href="">Veg Items</a>
					<ul>
						<li>
							<a href="">Starters</a>
							<ul>
								<li><a href="menuItem/GobiManchuria/25" class="button js-button" role="button" >Gobi Manchuria   $25</a>
								<h6 class="text-center">Quantity</h6>
<div class="input-group input-number-group">
  
  <input class="input-number" type="number" value="1" min="0" max="1000">
 
</div>
								
								</li>
    </button>
  </div>
</div>
								</li>
								<li><a href="http://localhost:8080/RestaurantApp/menuItem/paneerChilli/20" class="button js-button" role="button">Paneer Chilli   $20</a>
								<h6 class="text-center">Quantity</h6>
<div class="input-group input-number-group">
  
  <input class="input-number" type="number" value="1" min="0" max="1000">
 
</div>						
								
								</li>
								<li><a href="menuItem/MushroomManchurian/30" class="button js-button" role="button">Mushroom Manchurian   $30</a>
								<h6 class="text-center">Quantity</h6>
<div class="input-group input-number-group">
  
  <input class="input-number" type="number" value="1" min="0" max="1000">
 
</div>
								
								</li>
							</ul>
						</li>
						<li>
							<a href="">Curries</a>
							<ul>
								<li><a href="menuItem/AlooGobi/18" class="button js-button" role="button">Aloo Gobi   $18</a>
								<h6 class="text-center">Quantity</h6>
<div class="input-group input-number-group">
  
  <input class="input-number" type="number" value="1" min="0" max="1000">
 
</div>
								
								</li>
								<li><a href="menuItem/MattarPaneer/28" class="button js-button" role="button">Mattar Paneer   $28</a>
								<h6 class="text-center">Quantity</h6>
<div class="input-group input-number-group">
  
  <input class="input-number" type="number" value="1" min="0" max="1000">
 
</div>
								
								</li>
								<li><a href="menuItem/Mushroom/22" class="button js-button" role="button">Mushroom   $22</a>
								<h6 class="text-center">Quantity</h6>
<div class="input-group input-number-group">
  
  <input class="input-number" type="number" value="1" min="0" max="1000">
 
</div>
								
								</li>
								<li><a href="menuItem/PalakPaneer/20" class="button js-button" role="button">PalakPaneer $20</a>
								<h6 class="text-center">Quantity</h6>
<div class="input-group input-number-group">
  
  <input class="input-number" type="number" value="1" min="0" max="1000">
 
</div>
								
								</li>
							</ul>
						</li>
						<li>
							<a href="">Main Course</a>
							<ul>
								<li><a href="menuItem/VegBiryani/50" class="button js-button" role="button">Veg Biryani   $50</a>
								<h6 class="text-center">Quantity</h6>
<div class="input-group input-number-group">
  
  <input class="input-number" type="number" value="1" min="0" max="1000">
 
</div>
								
								</li>
								<li><a href="menuItem/AlooDumBiryani/45" class="button js-button" role="button">Aloo Dum Biryani   $45</a>
							<h6 class="text-center">Quantity</h6>
<div class="input-group input-number-group">
  
  <input class="input-number" type="number" value="1" min="0" max="1000">
 
</div>
							
</li>
								<li><a href="menuItem/PlainRice/30" class="button js-button" role="button">Plain Rice   $30</a>
								<h6 class="text-center">Quantity</h6>
<div class="input-group input-number-group">
  
  <input class="input-number" type="number" value="1" min="0" max="1000">
 
</div>
								
								</li>
							</ul>
						</li>
					</ul>
				</li>
					</ul>
					
					
			<ul>
			<li>
					<a href="">Non-Veg Items</a>
					<ul>
						<li>
							<a href="">Starters</a>
							<ul>
								<li><a href="menuItem/ChickenManchuria/46" class="button js-button" role="button">Chicken Manchuria   $46</a>
								<h6 class="text-center">Quantity</h6>
<div class="input-group input-number-group">
  
  <input class="input-number" type="number" value="1" min="0" max="1000">
 
</div>
								
								</li>
								<li><a href="menuItem/ChilliChicken/48" class="button js-button" role="button">Chilli Chicken   $48</a>
								<h6 class="text-center">Quantity</h6>
<div class="input-group input-number-group">
  
  <input class="input-number" type="number" value="1" min="0" max="1000">
 
</div>
								
								</li>
								<li><a href="menuItem/ChilliPrawns/55" class="button js-button" role="button">Chilli Prawns   $55</a>
								<h6 class="text-center">Quantity</h6>
<div class="input-group input-number-group">
  
  <input class="input-number" type="number" value="1" min="0" max="1000">
 
</div>						
								</li>
							</ul>
						</li>
						<li>
							<a href="">Curries</a>
							<ul>
								<li><a href="menuItem/Chicken/25" class="button js-button" role="button">Chicken   $25</a>
								
      <h6 class="text-center">Quantity</h6>
<div class="input-group input-number-group">
  
  <input class="input-number" type="number" value="1" min="0" max="1000">
 
</div>
								</li>
								<li><a href="menuItem/Mutton/25" class="button js-button" role="button">Mutton   $25</a>
								<h6 class="text-center">Quantity</h6>
<div class="input-group input-number-group">
  
  <input class="input-number" type="number" value="1" min="0" max="1000">
 
</div>
								
								</li>
								<li><a href="menuItem/Fish/30" class="button js-button" role="button">Fish   $30</a>
								<h6 class="text-center">Quantity</h6>
<div class="input-group input-number-group">
  
  <input class="input-number" type="number" value="1" min="0" max="1000">
 
</div>						
								</li>
								<li><a href="menuItem/Prawns/30" class="button js-button" role="button" >Prawns   $30</a>
								<h6 class="text-center">Quantity</h6>
<div class="input-group input-number-group">
  
  <input class="input-number" type="number" value="1" min="0" max="1000">
 
</div>						</li>
							</ul>
						</li>
						<li>
							<a href="">Main Course</a>
							<ul>
								<li><a href="menuItem/ChickenBiryani/36" class="button js-button" role="button" >Chicken Biryani   $36</a>
							 <h6 class="text-center">Quantity</h6>
<div class="input-group input-number-group">
  
  <input class="input-number" type="number" value="1" min="0" max="1000">
 
</div>					 
								</li>
								<li><a href="menuItem/MuttonBiryani/40" class="button js-button" role="button" >Mutton Biryani   $40</a>
								<h6 class="text-center">Quantity</h6>
<div class="input-group input-number-group">
  
  <input class="input-number" type="number" value="1" min="0" max="1000">
 
</div>
								
								</li>
								<li><a href="menuItem/PrawnBiryani/35" class="button js-button" role="button">Prawn Biryani   $35</a>
								<h6 class="text-center">Quantity</h6>
<div class="input-group input-number-group">
  
  <input class="input-number" type="number" value="1" min="0" max="1000">
 
</div>
								
								</li>
							</ul>
						</li>
					</ul>
				</li>
					</ul>
		<ul>			
		<li>
					<a href="">Desserts</a>
					<ul>
						<li><a href="menuItem/Rasmalai/20" class="button" role="button">Rasmalai   $20</a>
						<h6 class="text-center">Quantity</h6>
<div class="input-group input-number-group">
  
  <input class="input-number" type="number" value="1" min="0" max="1000">
 
</div>
						
						</li>
						<li><a href="menuItem/SheerKorma/25" class="button" role="button">Sheer Korma   $25</a>
						<h6 class="text-center">Quantity</h6>
<div class="input-group input-number-group">
  
  <input class="input-number" type="number" value="1" min="0" max="1000">
 
</div>				
						</li>
						<li><a href="menuItem/PeanutButtercup/30" class="button" role="button">Peanut Buttercup   $30</a>
						<h6 class="text-center">Quantity</h6>
<div class="input-group input-number-group">
  
  <input class="input-number" type="number" value="1" min="0" max="1000">
 
</div>
						
						</li>
						<li><a href="menuItem/BananaCaramel/29" class="button" role="button">Banana Caramel   $29</a>
						 <h6 class="text-center">Quantity</h6>
<div class="input-group input-number-group">
  
  <input class="input-number" type="number" value="1" min="0" max="1000">
 
</div>
						 
						</li>
					</ul>
				</li>
			</ul>
			<ul>	
		<li>
					<a href="">Bevarages</a>
					<ul>
						<li><a href="menuItem/MineralWater/15" class="button" role="button" onClick="function calc_total_bill()">Mineral Water   $15</a>
							<h6 class="text-center">Quantity</h6>
<div class="input-group input-number-group">
  
  <input class="input-number" type="number" value="1" min="0" max="1000">
 
</div>
							
							
						<!-- 	<script>
			function calc_total_bill() {
   				 var totBill=0;
    //if you add other item change 5 by 6 and so on...
    				for (var i = 1; i <= 5; i++) {
        				if(document.getElementById("total"+i).value != "")
            			totBill=totBill+parseInt(document.getElementById("total"+i).value);
    					}
   					 document.getElementById("totalbill").value = totBill;
					}
			</script> -->
						</li>
						<li><a href="menuItem/FreshLimeSoda/15" class="button" role="button" onClick="function calc_total_bill()">Fresh Lime Soda   $15</a>
						 <h6 class="text-center">Quantity</h6>
<div class="input-group input-number-group">
  
  <input class="input-number" type="number" value="1" min="0" max="1000">
 
</div>
						 
						</li>
						<li><a href="menuItem/Tea/10" class="button js-button" role="button" onClick="function calc_total_bill()">Tea   $10</a>
						<h6 class="text-center">Quantity</h6>
<div class="input-group input-number-group">
  
  <input class="input-number" type="number" value="1" min="0" max="1000">
 
</div>
						 
					</li>
						<li><a href="menuItem/Coffee/10" class="button js-button" role="button" onClick="function calc_total_bill()">Coffee   $10</a>
						 <h6 class="text-center">Quantity</h6>
<div class="input-group input-number-group">
  
  <input class="input-number" type="number" value="1" min="0" max="1000">
 
</div>
						 
						</li>
						
					</ul>
				</li>
				</ul>
		</nav>
	
		<section id="main_content">
			
		</section>
		
		
		<!-- Link back to HTML Dog: -->
		<!-- <p id="Food_link"><a href=""><img src="resources/images/food.png" alt="HTML Food"></a></p> -->
		
		
<!-- 		<script>
			function calc_total_bill() {
    var totBill=0;
    //if you add other item change 5 by 6 and so on...
    for (var i = 1; i <= 5; i++) {
        if(document.getElementById("total"+i).value != "")
            totBill=totBill+parseInt(document.getElementById("total"+i).value);
    }
    document.getElementById("totalbill").value = totBill;
    
    
}
			</script>
		 -->
	</article>
	
	

<% List<Item> allItems = (List<Item>) session.getAttribute("allItems");%>
<h3>Your Cart !!</h3>

<form action="http://localhost:8080/RestaurantApp/Endpage">
<input type="submit">
</form>
 
 <a href="http://localhost:8080/RestaurantApp/Endpage">CheckOut</a>

	<table class="tg">
	<tr>
		<th  id="itemname">Item Name</th>
		<th  id="itemprice">Item Price</th>
	</tr>
<% for(int i=1;i<allItems.size();i++){ %>	
		<tr>
			<td><%= allItems.get(i).getItemName() %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			
			<td><%= allItems.get(i).getItemPrice() %></td>
		</tr>
<%} %>
	</table>
	
	<h2>Total Bill : <%= session.getAttribute("totalFoodBill") %></h2>
</body>
</html>

