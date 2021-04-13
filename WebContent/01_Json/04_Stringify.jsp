<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSON Stringify</title>
</head>
<body>
      <h1>JSON Stringify</h1>
      <div id="output"></div>
      <script type="text/javascript">
      		// * JSON.stringify() : 자바스크립트 객체를 문자열로 변환
      		// - 자바스크립트 배열도 JSON 문자열로 변경 가능
      		var obj = {
      				name : "mok",
      				age : 20,
      				city : "Incheon"
      		};
      		
      		var myJSON = JSON.stringify(obj); // JSON 객체로 변환
      		document.getElementById("output").innerHTML = typeof(myJSON);
      </script>
      
      
      

</body>
</html>