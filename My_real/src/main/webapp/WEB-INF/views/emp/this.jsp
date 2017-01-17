<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<h1>${profile.name}</h1>
	</div>
	<div id="person" class="div1">
		<table>
			<tr>
				<th align="right">Address :</th>
				<th><input type="text" size="100" value="${profile.address}"
					style="border: none" readonly /></th>
			<tr>
				<th align="right">E-mail :</th>
				<th><input type="text" size="100" value="${profile.email}"
					style="border: none" readonly /></th>
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
		<c:forEach var="objective" items="${objectiveList}">
			<input type="text" value="${objective.o_contents}" size="160"
				style="border: none" readonly />
			<br>
		</c:forEach>
	</div>


	<div id="Experiences">
		<h3>
			<b>Experiences</b>
		</h3>
	</div>

	<div id="Experiences_E">
		<c:forEach var="experience" items="${experienceList}">
			<div id=e_1>
				<input type="text" value="${experience.exp_daystart}" readonly />~<input
					type="text" value="${experience.exp_dayend}" readonly />
				<textarea rows=3 cols="161" readonly />${experience.e_contents}</textarea>
			</div>
		</c:forEach>
	</div>


	<div id="Education">
		<h3>
			<b>Education</b>
		</h3>
		<table>
			<tr>
				<th align="left">City State or Country :</th>
				<th><input type="text" size=60 value="${education.city}"
					readonly /></th>
				<th align="left">School :</th>
				<th><input type="text" size=60 value="${education.school}"
					readonly /></th>
			</tr>
			<tr>
				<th align="left">Major/GPA/Honors :</th>
				<th><input type="text" size=60
					value="${education.major_gpa_honor}"
					readonly /></th>
				<th align="left" >Date :</th>
				<th><input type="text" size=60 value="${education.g_date}" readonly /></th>
			</tr>
		</table>
	</div>

	<div id="Activities">
		<h3>
			<b>Activities</b>
		</h3>
	</div>

	<div id="Activities_A">
		<c:forEach var="activity" items="${activityList}">
			<div id=a_1>
				<input type="text" value="${activity.a_daystart}" readonly />~<input type="text"
					value="${activity.a_dayend}" readonly /> <input type="text" size=160
					value="${activity.a_contents}" readonly />
			</div>
		</c:forEach>
	</div>

	<div id="Skills">
		<h3>
			<b>Skills</b>
		</h3>
	</div>

	<div id="Skills_S">
		<c:forEach var="skill" items="${skillList}">
			<div id=s_1>
				<input type="text" size=160 value="${skill.s_contents}" readonly />
			</div>
		</c:forEach>
	</div>

	<div id="Volunteer">
		<h3>
			<b>Volunteer</b>
		</h3>
	</div>

	<div id="Volunteer_V">
		<c:forEach var="volunteer" items="${volunteerList}">
			<div id=v_1>
				<input type="text" size=160 value="${volunteer.v_contents}" readonly />
			</div>
		</c:forEach>
	</div>
	
</body>
</html>