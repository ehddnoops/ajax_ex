package edu.web.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
    	
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String userid = request.getParameter("userid");
	String password = request.getParameter("password");
	//parameter 값으로 전송되었기 때문에 javascript 객체 키-값에 맞춰서 데이터 저장
	// ex) obj 변수의 userid == reequest.getParameter("userid")
	System.out.println(userid);
	System.out.println(password);
	
	if(userid.equals("test") && password.equals("1234")) {
		PrintWriter out = response.getWriter();
		out.append("success");
	}
	}

}
