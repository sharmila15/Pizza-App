<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="HtM.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
    <meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3.css"/>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma"/>
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Karma", sans-serif}
.w3-sidenav a {padding:20px}
</style>
</head>
<body>
    <form id="HomeP" runat="server">
    <div>
    <!-- Sidenav (hidden by default) -->
<nav class="w3-sidenav w3-card-2 w3-top w3-xlarge w3-animate-left" style="display:none;z-index:2;width:40%;min-width:300px" id="mySidenav">
  <a href="javascript:void(0)" onclick="w3_close()"
  class="w3-closenav">Close Menu</a>
  <a href="#food" onclick="w3_close()">Pizzas</a>
  <a href="#about" onclick="w3_close()">About Us</a>
</nav>

<!-- Top menu -->
<div class="w3-top">
  <div class="w3-white w3-xlarge w3-padding-xlarge" style="max-width:1200px;margin:auto">
    <div class="w3-left w3-opennav w3-hover-text-grey" onclick="w3_open()">☰</div>
    <div class="w3-right">Order over a Call@ 908-922-8106</div>
    <div class="w3-center">Slice Of Heaven</div>
  </div>
</div>
  
<!-- !PAGE CONTENT! -->
<div class="w3-main w3-content w3-padding" style="max-width:1200px;margin-top:100px">

  <!-- First Photo Grid-->
  <div class="w3-row-padding w3-padding-16 w3-center" id="food">
    <div class="w3-quarter">
     <img src="italian.jpg" alt="Italian Tomato Pie" style="width:600px; height:400px" />
       <!-- <asp:ImageButton ID="Italian" style="width:600px; height:400px;" runat="server" ImageUrl="~/italian.jpg" AlternateText="Italian Tomato Pie" />-->
      <h3>The Perfect Italian Pizza, A Real Classic</h3>
        <asp:Button ID="Itb" runat="server" Text="Buy : 20$" OnClick="Itb_Click" PostBackUrl="~/Bill.aspx" />
      <p>A baked pie of Italian origin consisting of a shallow breadlike crust covered with toppings such as seasoned tomato sauce, cheese, or sausage.</p>
    </div>
    <div class="w3-quarter">
      <img src="Greek pizza.jpg" alt="Greek Pizza" style="width:500px; height:400px"/>
       <%-- <asp:ImageButton ID="Greek" style="width:500px; height:400px;" runat="server" ImageUrl="~/Greek pizza.jpg" AlternateText="Greek Pizza" />--%>
      <h3>Let Me Tell You About This Greek Pizza</h3>
        <asp:Button ID="Grb" runat="server" Text="Buy : 20$" PostBackUrl="~/Bill.aspx" OnClick="Grb_Click" />
      <p>Greek pizza uses a tangy tomato paste that has a strong oregano flavor and is topped with a blend of mozzarella and cheddar cheese.</p>
    </div>
    <div class="w3-quarter">
      <img src="Sicillian Pizza.jpeg" alt="Sicilian Pizza" style="width:400px; height:400px"/>
        <%-- <asp:ImageButton ID="Sicillian" style="width:400px; height:400px;" runat="server" ImageUrl="~/Sicillian Pizza.jpeg" AlternateText="Sicilian Pizza" />
      --%>
        <h3>Sicillian, interrupted is the new pro</h3>
        
        <asp:Button ID="Sib" runat="server" Text="Buy : 20$" PostBackUrl="~/Bill.aspx" OnClick="Sib_Click" />
      <p>Sicilian pizza features a simple combination of tomato sauce and mozzarella cheese and is eaten all year round.</p>
      
    </div>
    <div class="w3-quarter">
      <img src="Neapolitan Pizza.jpg" alt="Neapolitan Pizza" style="width:300px; height:400px"/>
        <%--<asp:ImageButton ID="Neopolitan" style="width:300px; height:400px;" runat="server" ImageUrl="~/Neapolitan Pizza.jpg" AlternateText="Neapolitan Pizza" />--%>
      <h3>Once Again, Neopolitan Pizza Margherita</h3>
        <asp:Button ID="Neb" runat="server" Text="Buy : 20$" PostBackUrl="~/Bill.aspx" OnClick="Neb_Click" />
      <p>Features tomatoes, sliced mozzarella, basil, and extra virgin olive oil.</p>
    </div>
  </div>
  
  <!-- Second Photo Grid-->
  <div class="w3-row-padding w3-padding-16 w3-center">
    <div class="w3-quarter">
      <img src="NewYork Style Pizza.jpg" alt="NewYork Style Pizza" style="width:600px; height:400px"/>
        <%--<asp:ImageButton ID="NewYorkStylePizza" style="width:600px; height:400px;" runat="server" ImageUrl="~/NewYork Style Pizza.jpg" AlternateText="NewYork Style Pizza" />--%>
      <h3>All I Need Is a NY Pizza</h3>
        <asp:Button ID="NYb" runat="server" Text="Buy : 20$" PostBackUrl="~/Bill.aspx" OnClick="NYb_Click" />
      <p>New York-style pizzas can handle a wide range of toppings, from pepperoni and sausage to mushroom and anchovies.</p>
    </div>
    <div class="w3-quarter">
      <img src="Detroit Style Pizza.jpg" alt="Detroit Style Pizza" style="width:500px; height:400px"/>
        <%--<asp:ImageButton ID="DetroitStylePizza" style="width:500px; height:400px;" runat="server" ImageUrl="~/Detroit Style Pizza.jpg" AlternateText="Detroit Style Pizza" />--%>
      <h3>Detroit Delight</h3>
        <asp:Button ID="Deb" runat="server" Text="Buy : 20$" PostBackUrl="~/Bill.aspx" OnClick="Deb_Click" />
      <p>Pepperoni is placed on top of the crust, followed by cheese and other traditional toppings.</p>
    </div>
    <div class="w3-quarter">
      <img src="California Pizza.jpg" alt="California Pizza" style="width:400px; height:400px"/>
        <%--<asp:ImageButton ID="California" style="width:400px; height:400px;" runat="server" ImageUrl="~/California Pizza.jpg" AlternateText="California Pizza" />--%>
      <h3>The Californian Classic</h3>
        <asp:Button ID="Cab" runat="server" Text="Buy : 20$" PostBackUrl="~/Bill.aspx" OnClick="Cab_Click" />
      <p> California pizza, there's no such thing as traditional toppings. This lack of specificity allows you to get inventive.</p>
    </div>
    <div class="w3-quarter">
      <img src="Tomato Pie.jpg" alt="Tomato Pie" style="width:300px; height:400px"/>
        <%--<asp:ImageButton ID="TomatoPie" style="width:300px; height:400px;" runat="server" ImageUrl="~/NewYork Style Pizza.jpg" AlternateText="Tomato Pie Pizza" />--%>
      <h3>La Tomatino</h3>
        <asp:Button ID="Tob" runat="server" Text="Buy : 20$" PostBackUrl="~/Bill.aspx" OnClick="Tob_Click" />
      <p>Tomato pie traditionally features a simple blend of sauce and bread, with the occasional sprinkle of Parmesan cheese across the sauce.</p>
    </div>
  </div>

  <!-- Pagination -->
  <%--<div class="w3-center w3-padding-32">
    <div class="w3-bar">
      <a href="#" class="w3-bar-item w3-button w3-hover-black">«</a>
      <a href="#" class="w3-bar-item w3-black w3-button">1</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">2</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">3</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">4</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">»</a>
    </div>
  </div>--%>
  
  <hr id="about"/>

  <!-- About Section -->
  <div class="w3-container w3-padding-32 w3-center">  
    <h3>About Us, The Slice of Heaven</h3><br/>
    <img src="Logo.jpg" alt="Me" class="w3-image" style= "height:300px; width:300px"/>
    <div class="w3-padding-32">
      <h4><b>Our Mission:To be Number One</b></h4>
      <h6><i>Since we opened our first store in 2008, we’ve been making our thin crust pizza from scratch when you order it. And we still use stone hearth ovens. That’s one of the reasons our unique pizzas are worth the wait!</i></h6>
      <p>We pride ourselves in offering you the very best pizza, salads and sandwiches, and we value your patronage.Yo u can always contact us through the below details.</p>
    </div>
  </div>
  <hr/>
  
  <!-- Footer -->
  <footer class="w3-row-padding w3-padding-32">
    <div class="w3-third">
      <h3>Contact Us</h3>
      <p>5 Hazel Avenue,<br />
         Edison,<br />
         New Jersey-08820.<br />
         Ph:908-922-8106.<br />
         Email:slice@gmail.com
      </p>
      <p>Powered by <a href="Home.aspx" target="_blank">Slice Of Heaven</a></p>
    </div>
  
    <div class="w3-third">
      <h3>Post your Comment</h3>
        Comment:<br />
  <textarea name='comment' id='comment'></textarea><br />

  <input type='hidden' name='articleid' id='articleid' value='<? echo $_GET["id"]; ?>' />

  <input type='submit' value='Submit' /> 
     <%-- <ul class="w3-ul w3-hoverable">

        <li class="w3-padding-16">
          <img src="/w3images/workshop.jpg" class="w3-left w3-margin-right" style="width:50px"/>
          <span class="w3-large">Lorem</span><br/>
          <span>Sed mattis nunc</span>
        </li>
        <li class="w3-padding-16">
          <img src="/w3images/gondol.jpg" class="w3-left w3-margin-right" style="width:50px"/>
          <span class="w3-large">Ipsum</span><br/>
          <span>Praes tinci sed</span>
        </li> 
      </ul>--%>
    </div>

    <div class="w3-third w3-serif">
      <h3>POPULAR TAGS</h3>
      <p>
        <span class="w3-tag w3-black w3-margin-bottom">Pizza Margherita</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">New York Pizza</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Dinner</span>
        <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Tomato Pie</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">California Pizza</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Drinks</span>
        <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Detroit Delight</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Flavors</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Cuisine</span>
        <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Toppings</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">La Tomatino</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Fried</span>
        <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Cheese</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Oregano</span>
      </p>
    </div>
  </footer>

<!-- End page content -->
</div>

<script>
// Script to open and close sidenav
function w3_open() {
    document.getElementById("mySidenav").style.display = "block";
}
 
function w3_close() {
    document.getElementById("mySidenav").style.display = "none";
}
</script>

    </div>
    </form>
</body>
</html>
