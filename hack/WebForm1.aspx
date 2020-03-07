<!DOCTYPE html>
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

/* not required */
*,:active{
	outline: none;
}
*{
	padding: 0px;
	margin: 0px;
}

body{
	margin: 20px;
	background-color: #EEEDE9;
	-webkit-font-smoothing: antialiased;
	text-rendering: optimizeLegibility;
	font-size: 96.5%;
	font-family: Helvetica, Arial, sans-serif;
}

input{
	font-family: Helvetica, Arial, sans-serif;
}

h1, h2, h3, h4, h5, p{
	margin-bottom: 10px;
}

p{
	line-height: 20px;
}

a{
	text-decoration: none;
	color: #FF462B;
}

.clearfix{
	clear: both;
}

.animate{
	-webkit-transition: all 0.3s ease-in-out;
	-moz-transition: all 0.3s ease-in-out;
	transition: all 0.3s ease-in-out;
}


/* required */
.calendar{
	/*position: absolute;*/
	border-radius: 4px;
	overflow: hidden;
	width: 800px;
	height: 450px;
	left: 50%;
	/*margin-left: -400px;
	margin-top: -225px;*/
	top: 50%;
	background-color: #ffffff;
	color: #333333;
}

.calendar h1, .calendar h2{
	font-weight: 300;
	font-size: 26px;
	line-height: 28px;
	text-transform: uppercase;
	margin: 0px 0px 20px 0px;
}

.calendar h1 span{
	display: block;
}

.calendar .col{
	position: relative;
	float: left;
	height: 100%;
}

    .calendar .col .content {
        padding: 40px;
    }

.calendar ul{
	margin: 0px;
}

.calendar ul li{
	list-style: none;
}

    .calendar .leftCol {
        width: 40%;
        background-color: #009688;
    }

.calendar .noteList li{
	color: #ffffff;
	margin-bottom: 10px;
}

.calendar .notes p,
.calendar .notes input,
.calendar .noteList li{
	font-weight: 300;
	font-size: 14px;
}

.calendar .notes p{
	border-bottom: solid 1px rgba(255,255,255,0.4);
}

.calendar .notes input{
	background-color: #009688;
	color: #ffffff;
	border: none;
	width: 200px;
}

    .calendar .addNote,
    .calendar .removeNote {
        float: right;
        color: rgba(255,255,255,0.4);
        font-weight: bold;
        margin-left: 20px;
    }

.calendar .addNote:hover,
.calendar .removeNote:hover{
	color: #ffffff;
}

.calendar .addNote{
	font-size: 16px;
}

.calendar .leftCol h1{
	color: #ffffff;
	margin-bottom: 40px;
}

.calendar .rightCol{
	width: 60%;
}

    .calendar .rightCol h2 {
        color: #C7BEBE;
        text-align: right;
        margin-bottom: 70px;
    }

.calendar .months li,
.calendar .weekday li,
.calendar .days li{
	float: left;
	text-transform: uppercase;
}

.calendar .months li a,
.calendar .weekday li a,
.calendar .days li a{
	display: block;
	color: #747978;
}

.calendar .months li a{
	font-size: 10px;
	color: #C7BEBE;
	text-align: center;
	width: 32px;
	margin-bottom: 20px;
}

.calendar .months li .selected{
	font-weight: bold;
	color: #747978;
}

.calendar .weekday li a{
	width: 55px;
	text-align: center;
	margin-bottom: 20px;
	font-size: 12px;
}

.calendar .days li{
	width: 55px;
}

.calendar .days li a{
	width: 36px;
	height: 24px;
	text-align: center;
	margin: auto auto;
	font-size: 12px;
	font-weight: bold;
	border-radius: 12px;
	margin-bottom: 10px;
	padding-top: 10px;
}


.calendar .days li a:hover{
	background-color: #EEEDE9;
}

.calendar .days li .selected{
	background-color: #009688!important;
	color: #ffffff;
}

.calendar .days li .event{
	color: #00d4c0;
}


/* placeholder color */
::-webkit-input-placeholder {color: #ffffff; }
:-moz-placeholder {color: #ffffff; }
::-moz-placeholder {color: #ffffff; }
:-ms-input-placeholder {color: #ffffff; }


.submit{
  background-color: #009688;
  border: none;
  color: white;
  padding: 4px 8px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;

  background-color: white; 
  color: black; 
  border: 2px solid #009688;
}
.submit:hover{
  background-color: #009688;
  color: white;
}


#goals{
    margin-left:20px;
}

.btn{
    float: right;
    margin-right: 10px;
    border:none;
    background-color:white;
}

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
          <img src="homeworkout.jpg" style="width:100%" alt="Avatar">
          <div class="w3-display-bottomleft w3-container w3-text-black">
            
          </div>
        </div>
        <div class="w3-container">
            <i style="display:inline" class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i><h2 style="display:inline">Jane Doe</h2>
          <p>Date: <span id="date"></span></p>
          <p style="display:inline">Height: <p style="display:inline" id="height">69</p> inches</p>
          <p style="display: inline">Weight: <p style="                                                    display: inline
                                            " id="weight">160</p> pounds</p>
          <p style="display:inline">Sex: <p style="display:inline" id="sex">Female</p> </p>
          <p style="display:inline">Age: <p style="display:inline" id="age">21</p> </p>
            <br>
          <p style="display:inline">To maintain your weight, you should eat: <p style="display:inline" id ="BMR" style="display:inline"></p> calories per day </p>
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
                    calories = 655 + (4.35 * weight) + (4.7 * height) + (-4.7 * age);
                }
                document.getElementById("BMR").innerHTML = Math.round(calories);
            </script>
            <br />
            <p style="display:inline">Calories burned today: <p style="display:inline" id="burned" style="display:inline">0</p></p>
            <br>
            <p style="display:inline">Calories consumed today: <p style="display:inline" id="food">0</p></p>
            <br>
            <p style="display:inline">Amount of sleep last night: <p style="display:inline" id="sleep"></p></p>
            <br>
            <p style="display:inline">Personal goals:</p><ul id="goals"></ul>
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
            <select id="exercise" class="tabledrop">
              <option value="8">Basketball</option>
              <option value="5">Baseball</option>
              <option value="7">Running</option>
              <option value="3">Yoga</option>
            </select></p>
            <p>How long did you exercise for? (In minutes)</p><input id="burnedTime" value="1">
            <input type="button" onclick="burned()" value="Submit" class="submit">
           </form>
            <script>
                function burned() {
                    document.getElementById("burned").innerHTML = Math.round(parseInt(document.getElementById("burned").innerHTML) +
                        ((document.getElementById("burnedTime").value * parseInt(document.getElementById("exercise").value) * 3.5 / 2.2046 * document.getElementById("weight").innerHTML) / 200));

                    var text = exercise.options[exercise.selectedIndex].text;
                    var ul = document.getElementById("noteList");
                    var li = document.createElement("li");
                    li.appendChild(document.createTextNode("Exercised: "+ text + " for " + document.getElementById("burnedTime").value + " hours"));
                    ul.appendChild(li);
                }//"Exercised: " + text + "for" + parseInt(document.getElementById("burnedTime").value)) + " hours"
            </script> 
          <hr>
            <h5 class="w3-opacity"><b>Last nights sleep</b></h5>
            <p>How much did you sleep last night? (In hours)</p> <input id="sleepInput"> <input type="button" onclick="sleep()" value="Submit" class="submit">
            <script>
                function sleep(){
                    document.getElementById("sleep").innerHTML = document.getElementById("sleepInput").value + " hours";
                    var ul = document.getElementById("noteList");
                    var li = document.createElement("li");
                    li.appendChild(document.createTextNode("Slept for " + document.getElementById("sleepInput").value + " hours"));
                    ul.appendChild(li);
                }
            </script>
        <hr>
            <h5 class="w3-opacity"><b>Nutritional intake</b></h5>
            <form onsubmit="foodIntake()">
          <p><label for="foodTable">Select your food:</label>
            <select id="foodTable" class="tabledrop">
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
            <input type="button" onclick="foodIntake()" value="Submit" class="submit">
           </form>
            <script>
                function foodIntake() {
                    document.getElementById("food").innerHTML = Math.round(parseInt(document.getElementById("food").innerHTML)+
                        (parseInt(document.getElementById("foodAmount").value) * parseInt(document.getElementById("foodTable").value) ) /3.5 );
                }
            </script>
          <hr>
            <h5 class="w3-opacity"><b>Update weight</b></h5>
            <p>Set a new weight</p> <input id="weightInput"> <input type="button" onclick="weight()" value="Submit" class="submit">
            <script>
                function weight() {
                    document.getElementById("weight").innerHTML = parseInt(document.getElementById("weightInput").value);
                }
            </script>
        <hr>
            <h5 class="w3-opacity"><b>Personal goal</b></h5>
            <p>Set a personal goal</p> <input id="goalInput"> <input type="button" onclick="goal()" value="Submit" class="submit">
            <script>
                function goal() {
                    var ul = document.getElementById("goals");
                    var li = document.createElement("li");
                    li.appendChild(document.createTextNode(document.getElementById("goalInput").value));
                    ul.appendChild(li);

                    li.innerHTML += "        <button class='btn'>x</button>";
                    li.addEventListener('click', function () {
                        this.parentNode.removeChild(this);
                    });
                }
            </script>
        <hr>
        </div>
      </div>
 
      <div class="w3-container w3-card w3-white">
        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Calendar</h2>
        <div class="calendar">

			<div class="col leftCol">
				<div class="content">
					<h1 class="date">Saturday<span>March 7th</span></h1>
					<div class="notes">
						<p>
							<input type="text" value="" placeholder="New note"/>
							<a href="#" title="Add note" class="addNote animate">+</a>
						</p>
						<ul id="noteList" class="noteList">
							<li>Had a good day today</li>
						</ul>
					</div>
				</div>
			</div>

			<div class="col rightCol">
				<div class="content">
					<h2 class="year">2020</h2>
					<ul class="months">
						<li><a href="#" title="Jan" data-value="1">Jan</a></li>
						<li><a href="#" title="Feb" data-value="2">Feb</a></li>
						<li><a href="#" title="Mar" data-value="3" class="selected" >Mar</a></li>
						<li><a href="#" title="Apr" data-value="4">Apr</a></li>
						<li><a href="#" title="May" data-value="5">May</a></li>
						<li><a href="#" title="Jun" data-value="6">Jun</a></li>
						<li><a href="#" title="Jul" data-value="7">Jul</a></li>
						<li><a href="#" title="Aug" data-value="8">Aug</a></li>
						<li><a href="#" title="Sep" data-value="9">Sep</a></li>
						<li><a href="#" title="Oct" data-value="10">Oct</a></li>
						<li><a href="#" title="Nov" data-value="11">Nov</a></li>
						<li><a href="#" title="Dec" data-value="12">Dec</a></li>
					</ul>
					<div class="clearfix"></div>
					<ul class="weekday">
						<li><a href="#" title="Mon" data-value="1">Mon</a></li>
						<li><a href="#" title="Tue" data-value="2">Tue</a></li>
						<li><a href="#" title="Wed" data-value="3">Wed</a></li>
						<li><a href="#" title="Thu" data-value="4">Thu</a></li>
						<li><a href="#" title="Fri" data-value="5">Fri</a></li>
						<li><a href="#" title="Say" data-value="6">Sat</a></li>
						<li><a href="#" title="Sun" data-value="7">Sun</a></li>
					</ul>
					<div class="clearfix"></div>
					<ul class="days">
						<script>
                            for (var _i = 1; _i <= 31; _i += 1) {
                                var _addClass = '';
                                if (_i === 7) { _addClass = ' class="selected"'; }

                                switch (_i) {
                                    case 8:
                                    case 10:
                                    case 27:
                                        _addClass = ' class="event"';
                                        break;
                                }

                                document.write('<li><a href="#" title="' + _i + '" data-value="' + _i + '"' + _addClass + '>' + _i + '</a></li>');
                            }
						</script>
					</ul>
					<div class="clearfix"></div>
				</div>
			</div>

			<div class="clearfix"></div>

		</div>
      </div>
 
    <!-- End Right Column -->
    </div>
   
  <!-- End Grid -->
  </div>
 
  <!-- End Page Container -->
</div>
 
<footer class="w3-container w3-teal w3-center w3-margin-top">
  <p>2020 Azalea Hackathon</p>
  <p>Powered by Runtime Terror</p>
</footer>
 
</body>
    <script>
        var dt = new Date();
        document.getElementById("date").innerHTML = dt.toLocaleDateString();
    </script>
</html>