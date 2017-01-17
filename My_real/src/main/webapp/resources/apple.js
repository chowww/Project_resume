var i = 2;
var j = 2;
var k = 2;
var a = 2;
var b = 2;

function O_plus() {

	if (i == 5) {
		return;
	}
	i++;
	var name = "o_" + i;

	document.getElementById(name).style.display = 'block';
}

function O_minus() {
	if (i == 2) {
		return;
	}
	var name = "o_" + i;

	document.getElementById(name).style.display = 'none';

	i--;
}

function E_plus() {

	if (j == 5) {
		return;
	}
	j++;
	var name = "e_" + j;

	document.getElementById(name).style.display = 'block';
}

function E_minus() {
	if (j == 2) {
		return;
	}
	var name = "e_" + j;

	document.getElementById(name).style.display = 'none';

	j--;
}

function A_plus() {

	if (k == 5) {
		return;
	}
	k++;
	var name = "a_" + k;

	document.getElementById(name).style.display = 'block';
}

function A_minus() {
	if (k == 2) {
		return;
	}
	var name = "a_" + k;

	document.getElementById(name).style.display = 'none';

	k--;
}

function S_plus() {

	if (a == 5) {
		return;
	}
	a++;
	var name = "s_" + a;

	document.getElementById(name).style.display = 'block';
}

function S_minus() {
	if (a == 2) {
		return;
	}
	var name = "s_" + a;

	document.getElementById(name).style.display = 'none';

	a--;
}

function V_plus() {

	if (b == 5) {
		return;
	}
	b++;
	var name = "v_" + b;

	document.getElementById(name).style.display = 'block';
}

function V_minus() {
	if (b == 2) {
		return;
	}
	var name = "v_" + b;

	document.getElementById(name).style.display = 'none';

	b--;
}

function preCheck(){

	if ( chkPro() == 'false') {
		return false;
	}
	else if ( chkObj() == 'false') {
		return false;
	}
	else if (chkExp() == 'false'){
		return false;
	}
	else if (chkSki == 'false'){
		return false;
	}
	else if (chkVol == 'false'){
		return false;
	}
	else if (chkEdu == 'false'){
		return false;
	}
	else{
		document.form1.submit();
	}
}

function chkPro(){
	var flag = "true";

	if ( document.getElementById(address).value == ''){
		alert("insert " + a + "Address.");
		document.getElementById(address).focus();
		flag = "false";
	}
	else{
		alert("insert " + a + "E-mail.");
		document.getElementById(email).focus();
		flag = "false";
	}

	return flag;
}

function chkObj(){
	document.form1.objNum.value = i;
	var flag = "true";
	for (var a = 1; a <= i; a++){
		var objName = "o_contents" + a;

		if ( document.getElementById(objName).value == ''){
			flag = "false";
			break;
		}
	}

	if ( flag == "false"){
		alert("insert " + a + "the Objective contents. \nObjective base count ");
		document.getElementById(objName).focus();
	}

	return flag;
}

function chkSki(){
	document.form1.skiNum.value = i;
	var flag = "true";
	for (var w = 1; w <= a; w++){
		var skiName = "s_contents" + w;

		if ( document.getElementById(skiName).value == ''){
			flag = "false";
			break;
		}
	}

	if ( flag == "false"){
		alert("insert " + a + "the Skill contents. \nSkill base count ");
		document.getElementById(skiName).focus();
	}

	return flag;
}

function chkVol(){
	document.form1.volNum.value = i;
	var flag = "true";
	for (var a = 1; a <= i; a++){
		var volName = "v_contents" + a;

		if ( document.getElementById(volName).value == ''){
			flag = "false";
			break;
		}
	}

	if ( flag == "false"){
		alert("insert " + a + "the Volunteer contents. \nVolunteer base count ");
		document.getElementById(volName).focus();
	}

	return flag;
}

function chkExp(){
	document.form1.expNum.value = j;
	var con_flag = "true";
	for (var a = 1; a <= j; a++){
		var expName = "e_contents" + a;

		if ( document.getElementById(expName).value == ''){
			flag = "false";
			break;
		}
	}

	if ( flag == "false"){
		alert("insert " + a + "the Experience contents number "+a+".");
		document.getElementById(expName).focus();
	}
	//////////////////////////////////////////////////////////////////////////////////////////////
	var start_flag = "true";
	for (var a = 1; a <= j; a++){
		var exp_Start = "exp_daystart" + a;

		if ( document.getElementById(exp_Start).value == ''){
			start_flag = "false";
			break;
		}
	}

	if ( flag == "false"){
		alert("insert " + a + "the Start_Date number "+a+".");
		document.getElementById(exp_Start).focus();
	}

	//////////////////////////////////////////////////////////////////////////////////////////////
	var end_flag = "true";
	for (var a = 1; a <= j; a++){
		var exp_End = "exp_dayend" + a;

		if ( document.getElementById(exp_End).value == ''){
			end_flag = "false";
			break;
		}
	}

	if ( flag == "false"){
		alert("insert " + a + "the End_Date number "+a+".");
		document.getElementById(exp_End).focus();
	}
	var end_flag = "true";

	return con_flag;
}


function chkEdu(){
	var flag = "true";

	if ( document.getElementById(city).value == ''){
		alert("insert " + a + "City.");
		document.getElementById(city).focus();
		flag = "false";
	}
	else if (  document.getElementById(school).value == '' ){
		alert("insert " + a + "school.");
		document.getElementById(school).focus();
		flag = "false";
	}
	else if (  document.getElementById(major).value == '' ){
		alert("insert " + a + "major.");
		document.getElementById(major).focus();
		flag = "false";
	}
	else if(  document.getElementById(date_start).value == '' ){
		alert("insert " + a + "Start date.");
		document.getElementById(date_start).focus();
		flag = "false";
	}
	else
	{
		alert("insert " + a + "End date.");
		document.getElementById(date_end).focus();
		flag = "false";
	}
	return flag;
}