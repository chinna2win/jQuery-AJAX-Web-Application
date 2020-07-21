//$(document).ready(function() {
//        $('#userName').blur(function(event) {
//                var name = $('#userName').val();
//                $.get('GetUserServlet', {
//                        userName : name
//                }, function(responseText) {
//                        $('#ajaxGetUserServletResponse').text(responseText);
//                });
//        });
//});
//

// simple user name
//$(document).ready(function() {
//	$('#userName').blur(function() {
//		$.ajax({
//			url : 'http://localhost:8080/MyWebapp/GetUserServlet',
//			data : {
//				userName : $('#userName').val()
//			},
//			success : function(responseText) {
//				$('#ajaxGetUserServletResponse').text(responseText);
//			}
//		});
//	});
//});

// with out user name
//$(document).ready(function(){  
//    /*    var name = "name"; */
//		$.get('GetUserServlet', {
//			/* userName : name */
//		}, function(responseText) {
//			$('#ajaxGetUserServletResponse').text(responseText);
//		});	
// });

//simple user name
//$(document).ready(function() {
//	$.ajax({
//		type : "GET",
//		url : 'http://localhost:8080/MyWebapp/GetUserServlet',
//
//		success : function(responseText) {
//			
//				$('#ajaxGetUserServletResponse').text(responseText);
//			
//		}
//	});
//
//});

// <script>
//     $(document).ready(function() {
//         $("#somebutton").click(function() {
//             servletCall();
//         });
//
//     });
//     function servletCall() {
//         $.post(
//             "http://localhost:8080/IMPReports/GetReportValue", 
//             {name : "Message from jsp"}, //meaasge you want to send
//             function(result) {
//             $('#somediv').html('Here is your result : <strong>' + result + '</strong>'); //message you want to show
//         });
//     };
//   </script>

//Get DataPoint Value From DB
$(document).ready(
		function() {
			$.get('/GetUserServlet', function(
					responseJson) {
				var $select = $('#ajaxGetUserServletResponse');
				$select.find('option').remove();
				$.each(responseJson, function(key, value) {
					$('<option>').val(key).text(value).appendTo($select);
				});
			});
		});

// login

// $(document).ready(function() {
// $('#login').click(function() {
//
// var user = $('#userName').val();
// // var pwd = $('#password').val();
//
// $.ajax({
// // type: "POST",
// url : 'http://localhost:8080/MyWebapp/GetUserServlet',
// data : { userName :user},
// // contentType: "application/json",
// success : function(responseText) {
// $('#ajaxGetUserServletResponse').text(responseText);
// }
// });
// });
// });
