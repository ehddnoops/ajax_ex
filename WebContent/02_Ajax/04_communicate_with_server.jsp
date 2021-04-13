<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h3>아래에 글을 입력해주세요.</h3>
    <p>추천 : <span id="txtHint"></span></p>
    <p>첫 글자 : <input type="text" id="txt" onkeyup="showHint(this.value)"></p>
    <script type="text/javascript">
    	function showHint(str){
    		console.log(str);
    		if(str.length == 0){ //입력한 문자열의 길이가 0인 경우
    			document.getElementById("txtHint").innerHTML = "";
    			return;
    		}
    		var xhttp = new XMLHttpRequest(); 
        	xhttp.onreadystatechange = function(){ //돌아왔을때 수행할 일
        		if(this.readyState == 4 && this.status == 200){
        			console.log(this);
        			document.getElementById("txtHint").innerHTML = this.responseText;
        			
        		}
        	}
        xhttp.open("GET", "04_gethint.jsp?q=" + str, true);
        xhttp.send();
    	}
    </script>

</body>
</html>