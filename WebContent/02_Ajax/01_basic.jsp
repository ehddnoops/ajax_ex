<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajax 기초</title>
</head>
<body>
    <!-- 
    * AJAX : Asynchronous JavaScript and XML
    - AJAX를 사용하는 이유
    1) 웹페이지가 로드된 후 서버에서 데이터를 불러오기 위해
    2) 새로고침 없이 페이지를 업데이트
    3) 백그라운드에서 웹서버에 데이터 전송
    
    * XML(Extensible Markup Language)
    - 태그 형식으로 특정 정보를 표현
     -->
     
    <div id="output">
       <h2>XMLHTTPRequest Object</h2>
       <button type="button" onclick="loadDoc()">내용 변경</button>
    </div>
    <script type="text/javascript">
    function loadDoc() {
    	var xhttp = new XMLHttpRequest(); //브라우저 내장 request 객체
    	xhttp.onreadystatechange = function(){
    		//readyState 속성이 변경될 때 호출할 함수를 정의
    		if(this.readyState == 4 && this.status == 200){
    			console.log(this);
    			document.getElementById("output").innerHTML = this.responseText;
    			//this.responseText : 응답 데이터를 문자열로 변환
    			
    		}
    	}
    xhttp.open("GET", "01_ajax_intro.txt", true);
    // open(method, url, async) : xhttp에 보낼 정보 세팅
    // method : 요청 타입 GET or POST
    // url : 파일 또는 요청 서버 위치
    // async : true(비동기) or false(동기)
    xhttp.send();
    }
    
    </script>

</body>
</html>