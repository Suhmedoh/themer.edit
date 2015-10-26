<!DOCTYPE html>
<html>
<head>
<style>
body {
    background-color: #141414;
}

p.style1 {
	width: 200px;
  	margin-left: auto;
	margin-right: auto;
	font-family: "fixed";
	font-size: 30px;
   	color: {{ primary }};
  	text-align: center;


}

p.style2 {

	font-family: "fixed";
	font-size: 23px;
   	color: {{ primary }};
  	width: 300px;
  	margin-left: auto;
	margin-right: auto;
	margin-top: -50px;
  	text-align: center;
	


	
}

p.default {
	width: auto;
	margin-left: auto;
	margin-right: auto;
	color: {{ primary }};
   	font-family: "fixed";
  	font-size: 15px;
}	

</style>
</head>
<body>

	<div>
		<p class="style1">Fuegofox</p></br>
		<p class="style2">{{ theme }}</p>
	</div>
		<div style="width: 800px; margin-left: auto; margin-right: auto;">
		<div style="width: 40%; height: 10%; float: left;"></div>
		<div style="width: auto; text-align: center; float: left; margin-left: 30%;"><p class="default">
			<a href="http://www.reddit.com" style="text-decoration: none; font-family: fixed; font-size: 15px; color: #828282;">reddit</a> </br>
<a href="http://www.ochazuke.org" style="text-decoration: none; font-family: fixed; font-size: 15px; color: #828282;">ochazuke</a> </br><a href="http://www.reddit.com/r/unixporn" style="text-decoration: none; font-family: fixed; font-size: 15px; color: #828282;">unixporn</a></br><a href="http://www.facebook.com" style="text-decoration: none; font-family: fixed; font-size: 15px; color: #828282;">facebook</a> </p>
		</div>
		<div style="width: 140px; height: 200px; float: left;"></div>
		<div style="width: auto; text-align: center; float: left; "><p class="default"><a href="http://www.netflix.com" style="text-decoration: none; font-family: fixed; font-size: 15px; color: #828282;"> netflix </a></br><a href="http://www.kissanime.com" style="text-decoration: none; font-family: fixed; font-size: 15px; color: #828282;"> kissanime </a></br><a href="http://www.mixtape.moe" style="text-decoration: none; font-family: fixed; font-size: 15px; color: #828282;"> mixtape.moe </a> </br><a href="http://www.github.com/suhmedoh" style="text-decoration: none; font-family: fixed; font-size: 15px; color: #828282;"> github/suhmedoh</a> </br>
		</div>
	</div>
</body>
</html>

