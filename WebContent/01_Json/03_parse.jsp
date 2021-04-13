<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSON Parse</title>
</head>
<body>
    <h1>JSON 파싱</h1>
    <div id="output"></div>
    <script type="text/javascript">
    	// * JSON은 문자열 형태로 데이터가 교환됨.
    	// 	 따라서, 전송이 끝난 뒤 사용을 위해서는 원래 타입으로 변경해야 한다.
    	// 	 주로 ajax로 데이터를 통신할 경우 사용
    	
    	// 웹 서버에서 클라이언트로 데이터를 전송받은 경우(Server to Client)
    	var txt = '{"name" : "dong", "age" : 20, "city" : "서울", "birth" : "2002-6-20"}';
    	var obj = JSON.parse(txt); //JSON을 javascript 객체로 변환
    	
    	// date는 변환이 불가능하기 때문에 값을 따로 변환시켜야함
    	obj.birth = new Date(obj.birth);// 문자열 -> Date
    	
    	document.getElementById("output").innerHTML = obj.name + ", " + obj.birth;
    	
    </script>
</body>
</html>