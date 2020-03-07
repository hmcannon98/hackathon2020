﻿<!DOCTYPE html>
<html>
<title>Daily Tracker</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js" type="text/javascript"></script> 
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5,h6 {font-family: "Roboto", sans-serif}
</style>
<body class="w3-light-grey">

 
<!-- Page Container -->
<div class="w3-content w3-margin-top" style="max-width:1400px;">
 
  <!-- The Grid -->
  <div class="w3-row-padding">
 
    <!-- Left Column -->
    <div class="w3-third">
   
      <div class="w3-white w3-text-grey w3-card-4">
        <div class="w3-display-container">
          <img src="lady.jpg" style="width:100%" alt="Avatar">
          <div class="w3-display-bottomleft w3-container w3-text-black">
            <h2>Jane Doe</h2>
          </div>
        </div>
        <div class="w3-container">
          <p>Date: <span id="date"></span></p>
           
          <p>Height: <p id="height">69</p> </p>
          <p>Weight: <p id="weight">160</p> </p>
          <p>Sex: <p id="sex">Male</p> </p>
          <p>Age: <p id="age">21</p> </p>
            <br>
          <p>To maintain your weight, you should eat: <p id ="BMR" style="display:inline"></p> calories per day </p>
            <script>
                var calories;
                var sex = String(document.getElementById("sex").innerHTML);
                var weight = document.getElementById("weight").innerHTML;
                var height = document.getElementById("height").innerHTML;
                var age = document.getElementById("age").innerHTML;
                if (sex == "Male") {
                    calories = 66 + (6.2 * weight ) + (12.7 * height) + (-6.76 * age);
                }
                else if (sex == "Female") {
                    calories = 66 + (6.2 * weight) + (12.7 * height) + (-6.76 * age);
                }
                document.getElementById("BMR").innerHTML = Math.round(calories);
            </script>
            <br />
            <p>Calories burned today: <p id="burned" style="display:inline">0</p></p>
            <br>
            <p>Calories consumed today: <p id="food">0</p></p>
            <br>
            <p>Amount of sleep last night:<p id="sleep"></p></p>
          <hr>
 
          
        </div>
      </div><br>
 
    <!-- End Left Column -->
    </div>
 
    <!-- Right Column -->
    <div class="w3-twothird">
   
      <div class="w3-container w3-card w3-white w3-margin-bottom">
        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Input Information</h2>
        <div class="w3-container">
          <h5 class="w3-opacity"><b>Todays exercise</b></h5>
          <form onsubmit="burned()">
          <p><label for="exercise">Select your exercise:</label>
            <select id="exercise">
              <option value="8">Basketball</option>
              <option value="5">Baseball</option>
              <option value="7">Running</option>
              <option value="3">Yoga</option>
            </select></p>
            <p>How long did you exercise for? (In minutes)</p><input id="burnedTime" value="1">
            <input type="button" onclick="burned()" value="Submit">
           </form>
            <script>
                function burned() {
                    document.getElementById("burned").innerHTML = Math.round(parseInt(document.getElementById("burned").innerHTML) +
                        ((document.getElementById("burnedTime").value * parseInt(document.getElementById("exercise").value) * 3.5 / 2.2046 * document.getElementById("weight").innerHTML) / 200));
                }
            </script>
          <hr>
            <h5 class="w3-opacity"><b>Last nights sleep</b></h5>
            <p>How much did you sleep last night? (In hours)</p> <input id="sleepInput"> <input type="button" onclick="sleep()" value="Submit">
            <script>
                function sleep(){
                    document.getElementById("sleep").innerHTML = document.getElementById("sleepInput").value + " hours";
                }
            </script>
        <hr>
            <h5 class="w3-opacity"><b>Nutritional intake</b></h5>
            <form onsubmit="foodIntake()">
          <p><label for="foodTable">Select your food:</label>
            <select id="foodTable">
              <option value="70">Noodles</option>
              <option value="70">Potatoes</option>
              <option value="140">Rice</option>
              <option value="200">Chicken</option>
              <option value="200">Chicken</option>
                <option value="240">Ham</option>
                <option value="290">Pork</option>
                <option value="160">Turkey</option>
                <option value="65">Banana</option>
                <option value="440">Cheese</option>
                <option value="70">Milk whole</option>
                <option value="60">Yogurt</option>
            </select></p>
            <p>How much of the food did you eat? (In ounces)</p><input id="foodAmount" value="1">
            <input type="button" onclick="foodIntake()" value="Submit">
           </form>
            <script>
                function foodIntake() {
                    document.getElementById("food").innerHTML = Math.round(parseInt(document.getElementById("food").innerHTML)+
                        (parseInt(document.getElementById("foodAmount").value) * parseInt(document.getElementById("foodTable").value) ) /3.5 );
                }
            </script>
          <hr>
        <hr>
        </div>
      </div>
 
      <div class="w3-container w3-card w3-white">
        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Education</h2>
        <div class="w3-container">
          <h5 class="w3-opacity"><b>W3Schools.com</b></h5>
          <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Forever</h6>
          <p>Web Development! All I need to know in one place</p>
          <hr>
        </div>
        <div class="w3-container">
          <h5 class="w3-opacity"><b>London Business School</b></h5>
          <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>2013 - 2015</h6>
          <p>Master Degree</p>
          <hr>
        </div>
        <div class="w3-container">
          <h5 class="w3-opacity"><b>School of Coding</b></h5>
          <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>2010 - 2013</h6>
          <p>Bachelor Degree</p><br>
        </div>
      </div>
 
    <!-- End Right Column -->
    </div>
   
  <!-- End Grid -->
  </div>
 
  <!-- End Page Container -->
</div>
 
<footer class="w3-container w3-teal w3-center w3-margin-top">
  <p>Find me on social media.</p>
  <i class="fa fa-facebook-official w3-hover-opacity"></i>
  <i class="fa fa-instagram w3-hover-opacity"></i>
  <i class="fa fa-snapchat w3-hover-opacity"></i>
  <i class="fa fa-pinterest-p w3-hover-opacity"></i>
  <i class="fa fa-twitter w3-hover-opacity"></i>
  <i class="fa fa-linkedin w3-hover-opacity"></i>
  <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
</footer>
 
</body>
    <script>
        var dt = new Date();
        document.getElementById("date").innerHTML = dt.toLocaleDateString();
    </script>
</html>