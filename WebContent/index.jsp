<!DOCTYPE html>
<html>
<head>
<style>
.button {
    background-color: #ffffff;
    border: none;
    color: #9b7373;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    width:400px;
    height:50px;
	font-weight:bold;
}

.button:hover {
    background-color: #b3c6ff;
}

table{
background-color:#efefef;
}

td, th{
border:solid 0.006em #000;
height:25px;
vertical-align:middle;
}

h2{
color: #583891;
}

th{
background-color:#999;
color:#FFF;
}
</style>

<script src="js/reportsUrl.js" type="text/javascript"></script>
 
</head>
<body>

 <center><h2>Incident Management (IMP) Reports</h2>
<table> 
  <tr>
    <td><a href="" id="IndividualProductivity" onclick="reportsUrl()"><button class="button">Individual Productivity</button></a></td>
  </tr>
  <tr>
  <td><a href="" id="OverallPercentageAction" onclick="reportsUrl()"><button class="button">Overall Percentage of Action</button></a></td>
  </tr>
  <tr>
    <td><a href="" id="NumberOfOccByDay" onclick="reportsUrl()"><button class="button">Number Of Occurance By Day</button></a></td> 
  </tr>
  <tr>
     <td><a href="" id="NumberOfOccByTime" onclick="reportsUrl()"><button class="button">Number Of Occurance By Time</button></a></td>    
  </tr>
   <tr>
    <td><a href="" id="NumberOfOccByWeek" onclick="reportsUrl()"><button class="button">Number Of Occurance By Week</button></a></td>  
  </tr>
  <tr>
    <td><a href="" id="TotalOccVersesTime" onclick="reportsUrl()"><button class="button">Total Occurance Versus Time</button></a></td>
  </tr>
   <tr>
    <td><a href="" id="SummaryByProject" onclick="reportsUrl()"><button class="button">Summary By Project</button></a></td>
   </tr>
   
</table>
</center>

</body>
</html>
