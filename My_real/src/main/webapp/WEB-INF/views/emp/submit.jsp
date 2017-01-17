<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/apple.js"> </script> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/design.css" type="text/css" />
<title>Insert title here</title>


</head>

<body>
<form method='post' action='insert' name="form1">
<input type="text" name="objNum">
<input type="text" name="expNum">
<input type="text" name="actNum">
<input type="text" name="skiNum">
<input type="text" name="volNum">
	<div id="header" class="div1">
		<h1>RESUME</h1>
	</div>

	<div id="person" class="div1">
		<table>
			<tr>
				<th align="right">Address :</th>
				<th><input type="text"  size="100" id="address" name="address"></th>
			<tr>
				<th align="right">E-mail :</th>
				<th><input type="text"  size="100" id="email" name="email"></th>
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

		<input type="button" value="+" onclick="O_plus()">
		<input type="button" value="-" onclick="O_minus()">
		<br>
		<div id=o_1>
			<input type="text" size=160 id="o_contents1" name="o_contents1">
		</div>
		<div id=o_2>
			<input type="text" size=160 id="o_contents2" name="o_contents2">
		</div>
		<div id=o_3>
			<input type="text" size=160 id="o_contents3" name="o_contents3">
		</div>
		<div id=o_4>
			<input type="text" size=160 id="o_contents4" name="o_contents4">
		</div>
		<div id=o_5>
			<input type="text" size=160 id="o_contents5" name="o_contents5">
		</div>
	</div>


	<div id="Experiences">
		<h3>
			<b>Experiences</b>
		</h3>
	</div>

	<div id="Experiences_E">

		<input type="button" value="+" onclick="E_plus()">
		<input type="button" value="-" onclick="E_minus()">
		<br>

		<div id=e_1>
			<input type="text" id="exp_daystart1" name="exp_daystart1">~<input type="text" id="exp_dayend1" name="exp_dayend1">
			<textarea rows=3 cols="161" id="e_contents1" name="e_contents1"></textarea>
		</div>

		<div id=e_2>
			<input type="text" id="exp_daystart2" name="exp_daystart2">~<input type="text" id="exp_dayend2" name="exp_dayend2">
			<textarea rows=3 cols="161" id="e_contents2" name="e_contents2"></textarea>
		</div>

		<div id=e_3>
			<input type="text" id="exp_daystart3" name="exp_daystart3">~<input type="text" id="exp_dayend3" name="exp_dayend3">
			<textarea rows=3 cols="161" id="e_contents3" name="e_contents3"></textarea>
		</div>

		<div id=e_4>
			<input type="text" id="exp_daystart4" name="exp_daystart4">~<input type="text" id="exp_dayend4" name="exp_dayend4">
			<textarea rows=3 cols="161" id="e_contents4" name="e_contents4"></textarea>
		</div>

		<div id=e_5>
			<input type="text" id="exp_daystart5" name="exp_daystart5">~<input type="text" id="exp_dayend5" name="exp_dayend5">
			<textarea rows=3 cols="161" id="e_contents5" name="e_contents5"></textarea>
		</div>
	</div>


	<div id="Education">
		<h3>
			<b>Education</b>
		</h3>
		<table>
			<tr>
				<th align="left">City State or Country :</th>
				<th><input type="text" size=60 id="city" name="city"></th>
				<th align="left">School :</th>
				<th><input type="text" size=60 id="school" name="school"></th>
			</tr>
			<tr>  
				<th align="left">Major/GPA/Honors :</th>
				<th><input type="text" size=60 id="major" name="major"></th>
				<th align="left">Date :</th>
				<th><input type="text" id="date_start" name="date_start">~<input type="text" id="date_end" name="date_end"></th>
			</tr>
		</table>
	</div>

	<div id="Activities">
		<h3>
			<b>Activities</b>
		</h3>
	</div>


	<div id="Activities_A">

		<input type="button" value="+" onclick="A_plus()">
		<input type="button" value="-" onclick="A_minus()">
		<br>

		<div id=a_1>
			<input type="text" id="a_daystart1" name="a_daystart1">~<input type="text" id="a_dayend1" name="a_dayend1">
			<input type="text" size=160 id="a_contents1" name="a_contents1">
		</div>

		<div id=a_2>
			<input type="text" id="a_daystart2" name="a_daystart2">~<input type="text" id="a_dayend2" name="a_dayend2">
			<input type="text" size=160 id="a_contents2" name="a_contents2">
		</div>

		<div id=a_3>
			<input type="text" id="a_daystart3" name="a_daystart3">~<input type="text" id="a_dayend3" name="a_dayend3">
			<input type="text" size=160 id="a_contents3" name="a_contents3">
		</div>

		<div id=a_4>
			<input type="text" id="a_daystart4" name="a_daystart4">~<input type="text" id="a_dayend4" name="a_dayend4">
			<input type="text" size=160 id="a_contents4" name="a_contents4">
		</div>

		<div id=a_5>
			<input type="text" id="a_daystart5" name="a_daystart5">~<input type="text" id="a_dayend5" name="a_dayend5">
			<input type="text" size=160 id="a_contents5" name="a_contents5">
		</div>
	</div>

	<div id="Skills">
		<h3>
			<b>Skills</b>
		</h3>
	</div>

	<div id="Skills_S">

		<input type="button" value="+" onclick="S_plus()">
		<input type="button" value="-" onclick="S_minus()">
		<br>
		<div id=s_1>
			<input type="text" size=160 id="s_contents1" name="s_contents1">
		</div>
		<div id=s_2>
			<input type="text" size=160 id="s_contents2" name="s_contents2">
		</div>
		<div id=s_3>
			<input type="text" size=160 id="s_contents3" name="s_contents3">
		</div>
		<div id=s_4>
			<input type="text" size=160 id="s_contents4" name="s_contents4">
		</div>
		<div id=s_5>
			<input type="text" size=160 id="s_contents5" name="s_contents5">
		</div>
	</div>

	<div id="Volunteer">
		<h3>
			<b>Volunteer</b>
		</h3>
	</div>

	<div id="Volunteer_V">

		<input type="button" value="+" onclick="V_plus()">
		<input type="button" value="-" onclick="V_minus()">
		<br>
		<div id=v_1>
			<input type="text" size=160 id="v_contents1" name="v_contents1">
		</div>
		<div id=v_2>
			<input type="text" size=160 id="v_contents2" name="v_contents2">
		</div>
		<div id=v_3>
			<input type="text" size=160 id="v_contents3" name="v_contents3">
		</div>
		<div id=v_4>
			<input type="text" size=160 id="v_contents4" name="v_contents4">
		</div>
		<div id=v_5>
			<input type="text" size=160 id="v_contents5" name="v_contents5">
		</div>
	</div>
	<input type="button" value="Á¦Ãâ" onclick="preCheck()">
</form>
</body>

</html>