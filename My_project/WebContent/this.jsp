<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
 <script type="text/javascript" src="apple.js"></script>
<title>Insert title here</title>

<LINK href="design.css" rel="STYLESHEET">
</head>
<body>
	<div id="header" class="div1">
		<h1>RESUME</h1>
	</div>

	<div id="person" class="div1">
		 
		<table>
			<tr>
				<th align="right">Address :</th>
				<th><input type="text" value="address"></th>
			<tr>
				<th align="right">E-mail :</th>
				<th><input type="text" value="e-mail"></th>
			</tr>
		</table>
	</div>

	<div id=line>
		<h4>
			------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		</h4>
	</div>

	<div id="Objective">
		<h3>
			<b>Objective</b>
		</h3>
	</div>

	<div id="Objective_O">

		<input type="button" name="O_plus" value="+" onclick="O_plus()">
		<input type="button" name="O_minus" value="-" onclick="O_minus()">
		<br>
		<div id=o_1>
			<input type="text" size=160>
		</div>
		<div id=o_2>
			<input type="text" size=160>
		</div>
		<div id=o_3>
			<input type="text" size=160>
		</div>
		<div id=o_4>
			<input type="text" size=160>
		</div>
		<div id=o_5>
			<input type="text" size=160>
		</div>
	</div>


	<div id="Experiences">
		<h3>
			<b>Experiences</b>
		</h3>
	</div>

	<div id="Experiences_E">

		<input type="button" name="E_plus" value="+" onclick="E_plus()">
		<input type="button" name="E_minus" value="-" onclick="E_minus()">
		<br>

		<div id=e_1>
			<input type="date" value="date">~<input type="date"
				value="date">
			<textarea rows=3 cols="161"></textarea>
		</div>

		<div id=e_2>
			<input type="date" value="date">~<input type="date"
				value="date">
			<textarea rows=3 cols="161"></textarea>
		</div>

		<div id=e_3>
			<input type="date" value="date">~<input type="date"
				value="date">
			<textarea rows=3 cols="161"></textarea>
		</div>

		<div id=e_4>
			<input type="date" value="date">~<input type="date"
				value="date">
			<textarea rows=3 cols="161"></textarea>
		</div>

		<div id=e_5>
			<input type="date" value="date">~<input type="date"
				value="date">
			<textarea rows=3 cols="161"></textarea>
		</div>
	</div>


	<div id="Education">
		<h3>
			<b>Education</b>
		</h3>
		<table>
			<tr>
				<th align="left">City State or Country :</th>
				<th><input type="text" size=60></th>
				<th align="left">School :</th>
				<th><input type="text" size=60></th>
			</tr>
			<tr>
				<th align="left">Major/GPA/Honors :</th>
				<th><input type="text" size=60></th>
				<th align="left">Date :</th>
				<th><input type="date">~<input type="date"></th>
			</tr>
		</table>
	</div>

	<div id="Activities">
		<h3>
			<b>Activities</b>
		</h3>
	</div>


	<div id="Activities_A">

		<input type="button" name="A_plus" value="+" onclick="A_plus()">
		<input type="button" name="A_minus" value="-" onclick="A_minus()">
		<br>

		<div id=a_1>
			<input type="date" value="date">~<input type="date"
				value="date"> <input type="text" size=160>
		</div>

		<div id=a_2>
			<input type="date" value="date">~<input type="date"
				value="date"> <input type="text" size=160>
		</div>

		<div id=a_3>
			<input type="date" value="date">~<input type="date"
				value="date"> <input type="text" size=160>
		</div>

		<div id=a_4>
			<input type="date" value="date">~<input type="date"
				value="date"> <input type="text" size=160>
		</div>

		<div id=a_5>
			<input type="date" value="date">~<input type="date"
				value="date"> <input type="text" size=160>
		</div>
	</div>

	<div id="Skills">
		<h3>
			<b>Skills</b>
		</h3>
	</div>

	<div id="Skills_S">

		<input type="button" name="S_plus" value="+" onclick="S_plus()">
		<input type="button" name="S_minus" value="-" onclick="S_minus()">
		<br>
		<div id=s_1>
			<input type="text" size=160>
		</div>
		<div id=s_2>
			<input type="text" size=160>
		</div>
		<div id=s_3>
			<input type="text" size=160>
		</div>
		<div id=s_4>
			<input type="text" size=160>
		</div>
		<div id=s_5>
			<input type="text" size=160>
		</div>
	</div>

	<div id="Volunteer">
		<h3>
			<b>Volunteer</b>
		</h3>
	</div>

	<div id="Volunteer_V">

		<input type="button" name="V_plus" value="+" onclick="V_plus()">
		<input type="button" name="V_minus" value="-" onclick="V_minus()">
		<br>
		<div id=v_1>
			<input type="text" size=160>
		</div>
		<div id=v_2>
			<input type="text" size=160>
		</div>
		<div id=v_3>
			<input type="text" size=160>
		</div>
		<div id=v_4>
			<input type="text" size=160>
		</div>
		<div id=v_5>
			<input type="text" size=160>
		</div>
	</div>


</body>
</html>