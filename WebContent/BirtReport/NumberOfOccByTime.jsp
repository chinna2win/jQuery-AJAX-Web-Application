<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Number of Occurance By Time</title>
<link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet"
	media="screen">
<link href="../js/bootstrap-datetimepicker.min.css" rel="stylesheet"
	media="screen">
<link href="../js/jquery-1.11.1.js" rel="stylesheet" media="screen">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
body {
	margin: none;
	padding: none;
	font-family: "Times New Roman";
}

#report-param, #report-viewer-wrapper {
	width: 99%;
	padding: 0px;
	margin: 0px;
}

#report-param {
	height: 110px;
}

#report-viewer-wrapper {
	height: 1000px;
	background-color: #f7f5f5;
}

#clickPdf {
	margin: -10px 0px 10px;
	height: 29px;
}

input[type="text"], input[type="button"], input[type="submit"], input[type="date"]
	{
	padding: 3px 15px;
	margin: 0px 5px;
	height: 23px;
	width: 172px;
}

input[type="date"] {
	padding: 0px !important;
	height: 27px !important;
}

input[type="button"] {
	font-weight: bold !important;
	display: inline-block;
	font-size: 13px;
	cursor: pointer;
	border: solid 0.035em #999;
	background-color: #c2c5cf;
	float: left !important;
	height: 29px;
}

span {
	font-size: 18px;
	color: #6d3e64;
	font-weight: bold;
}

h2 {
	color: #455da6;
	text-align: center;
}

.container {
	
}

#report-param-container {
	float: none;
	width: 770px;
	margin: 10px auto 20px auto;
}
</style>

<script language="javascript">
	function generate_report() {
		var inc_date = document.getElementById("inc_date").value;
		document.getElementById("report-viewer-frame").src = "/birt/preview?__report=NumOfOccByTime.rptdesign&IncidentDate="
				+ inc_date;
	}
</script>

<script language="javascript">
	$(document)
	.ready(
			function() {
				$("#clickPdf")
						.click(function() {});					
			});
</script>

 <script language="javascript">
 var pdfUrl;
function callJavaFX(){
	var inc_date = document.getElementById("inc_date").value;
	pdfUrl = "http://10.9.82.97:8080/birt/preview?__report=NumOfOccByTime.rptdesign&__format=pdf&IncidentDate="+ inc_date;
}
</script>

</head>
<body>
	<div id="report-param">
		<div class="container" id="report-param-container">
			<form action="/birt/frameset" target="report-viewer-frame"
				method="get" name="form-report-param">
				<h2>NUMBER OF OCCURRENCE BY TIME</h2>
				<div class="controls input-append date form_date" data-date=""
					data-date-format="yyyy-mm-dd" data-link-field="dtp_input2"
					data-link-format="yyyy-mm-dd">
					<input size="16" value="Select Incident Date" type="text"
						name="inc_date" id="inc_date" readonly> <span
						class="add-on"><i class="icon-remove"></i></span> <span
						class="add-on"><i class="icon-th"></i></span>
				</div>

				<input type="button" value="Generate" id="but-generate-report"
					onclick="generate_report();" /> <input
					onclick="window.location.href='/IMPReports/'" type="button"
					value="Home" />			
				<!-- <div id="somediv"></div> -->
			</form>
			<button id="clickPdf" onclick="callJavaFX();">Generate PDF</button>
			<!-- /form-report-param -->
		</div>
		<!-- /container -->
	</div>
	
	<!-- /report-param -->
	<div id="report-viewer-wrapper">
		<iframe id="report-viewer-frame" name="report-viewer-frame"
			width="100%" height="100%" background-color="#FFF"> </iframe>
		<!-- /report-viewer-frame -->
	</div>
	<!-- /report-viewer-wrapper -->

	<script type="text/javascript" src="./jquery/jquery-1.8.3.min.js"
		charset="UTF-8"></script>
	<script type="text/javascript" src="./bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap-datetimepicker.js"
		charset="UTF-8"></script>
	<script type="text/javascript"
		src="../js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
	<script type="text/javascript">
		$('.form_datetime').datetimepicker({
			//language:  'fr',
			weekStart : 1,
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 2,
			forceParse : 0,
			showMeridian : 1
		});
		$('.form_date').datetimepicker({
			language : 'fr',
			weekStart : 1,
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 2,
			minView : 2,
			forceParse : 0
		});
		$('.form_time').datetimepicker({
			language : 'fr',
			weekStart : 1,
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 1,
			minView : 0,
			maxView : 1,
			forceParse : 0
		});
	</script>
</body>
</html>