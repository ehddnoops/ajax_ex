<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSON Type</title>
</head>
<body>
    <h1>JSON 데이터 타입</h1>
    <div id="output"></div>
    
    <script type="text/javascript">
       // * JSON 데이터 타입
       // - 문자열
       // - 숫자
       // - 객체(JSON 객체)
       // - 배열
       // - 논리형
       // - null
       
       // 문자열
       var str = {"name" : "sa"};
       
       // 숫자
       var num = {"age" : 21};
       
       // 객체
       var obj = {
             "employee" : {"name" : "sa", "age" : 21, "city" : "서울" } // 세미콜론은 안붙임
       };
       
       document.getElementById("output").innerHTML += obj + "<br>";
       document.getElementById("output").innerHTML += obj.employee.name + "<br>";
       document.getElementById("output").innerHTML += obj.employee.age + "<br>";
       
    </script>
</body>
</html>