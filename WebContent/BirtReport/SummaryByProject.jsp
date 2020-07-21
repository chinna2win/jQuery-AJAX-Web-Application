<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Summary of Incidents by Project</title>
<link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet"
	media="screen">
<link href="../css/bootstrap-datetimepicker.min.css" rel="stylesheet"
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
	height: 150px;
}

#report-viewer-wrapper {
	height: 1000px;
	background-color: #f7f5f5;
}

#clickPdf {
	margin: 4px 0px 10px;
	height: 29px;	
}

input[type="text"], input[type="button"], input[type="submit"], input[type="date"]
	{
	padding: 3px 15px;
	margin: 0px 5px;
	height: 23px;
	width: auto;
	float: left !important;
}

input[type="date"] {
	padding: 0px !important;
	height: 27px !important;
}

input[type="button"] {
	font-weight: bold !important;
	display: inline-block;
	font-size: 12px;
	cursor: pointer;
	border: solid 0.035em #999;
	background-color: #c2c5cf;
	float: left !important;
	height: 29px;
	margin: 4px;
}

span {
	font-size: 18px;
	color: #6d3e64;
	font-weight: bold;
}

h3 {
	color: #455da6;
	text-align: center;
}

#report-param-container {
	float: none;
	width: 482px;
	margin: 10px auto 20px auto;
}
</style>

<script language="javascript">
	function generate_report() {
		var from_date = document.getElementById("from_date").value;
		var to_date = document.getElementById("to_date").value;
		var dataPoint = document.getElementById("ajaxGetUserServletResponse").value;
		if (dataPoint == 'ALL') {
			document.getElementById("report-viewer-frame").src = "/birt/preview?__report=SummaryOfIncidentByProject.rptdesign&fromDate="
					+ from_date + "&toDate=" + to_date;
		} else {
			document.getElementById("report-viewer-frame").src = "/birt/preview?__report=Summary_SubProject.rptdesign&FromDate="
					+ from_date
					+ "&ToDate="
					+ to_date
					+ "&DataPointALL="
					+ dataPoint;
		}
	}
</script>
<script src="http://code.jquery.com/jquery-1.10.2.js" type="text/javascript"></script>
<!-- <script src="js/app-ajax.js" type="text/javascript"></script> -->
<script type="text/javascript">
$(document).ready(
		function() {
			$.get('/IMPReports/GetUserServlet', function(
					responseJson) {
				var $select = $('#ajaxGetUserServletResponse');
				$select.find('option').remove();
				$.each(responseJson, function(key, value) {
					$('<option>').val(key).text(value).appendTo($select);
				});
			});
		});
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
	var from_date = document.getElementById("from_date").value;										
	var to_date = document.getElementById("to_date").value;
	var data_point = document.getElementById("ajaxGetUserServletResponse").value;
	if(data_point == 'ALL')	{
		pdfUrl = "http://10.9.82.97:8080/birt/preview?__report=SummaryOfIncidentByProject.rptdesign&__format=pdf&fromDate="+ from_date+"&toDate=" +to_date;		
	} else {
		pdfUrl = "http://10.9.82.97:8080/birt/preview?__report=Summary_SubProject.rptdesign&__format=pdf&FromDate="+ from_date+"&ToDate=" +to_date + "&DataPointALL="+ data_point;
		}	  
}
</script>

</head>
<body>
	<div id="report-param">
		<div class="container" id="report-param-container">
			<form action="/birt/frameset"
				target="report-viewer-frame" method="get" name="form-report-param">
				<h3>SUMMARY OF INCIDENTS BY PROJECT</h3>
				<div class="controls input-append date form_date" data-date=""
					data-date-format="yyyy-mm-dd" data-link-field="dtp_input2"
					data-link-format="yyyy-mm-dd">
					<input size="16" value="From Date" type="text" name="date"
						id="from_date" readonly> <span class="add-on"><i
						class="icon-remove"></i></span> <span class="add-on"><i
						class="icon-th"></i></span>
				</div>
				<div class="controls input-append date form_date" data-date=""
					data-date-format="yyyy-mm-dd" data-link-field="dtp_input2"
					data-link-format="yyyy-mm-dd">
					<input size="16" value="To Date" type="text" name="date"
						id="to_date" readonly> <span class="add-on"><i
						class="icon-remove"></i></span> <span class="add-on"><i
						class="icon-th"></i></span>
				</div>
				<div>
				
				    <select id="ajaxGetUserServletResponse">
					</select>			

				</div>
				<input type="button" value="Generate" id="but-generate-report"
					onclick="generate_report();" /> <input
					onclick="window.location.href='/IMPReports/'" type="button"
					value="Home" />					 
				</form>
			<!-- /form-report-param -->
			<button id="clickPdf" onclick="callJavaFX();">Generate PDF</button>
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