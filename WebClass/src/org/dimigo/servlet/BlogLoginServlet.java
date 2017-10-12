package org.dimigo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.vo.UserVO;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

/**
 * Servlet implementation class BlogLoginServlet
 */
@WebServlet("/bloglogin")
public class BlogLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BlogLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pw2");
		System.out.printf("id : %s, pwd : %s\n", id, pwd);
		
		response.setContentType("text/html;charset=utf-8");
		
		if(id.equals("test@naver.com")) {
			//세션에 사용자 정보 생성
			HttpSession session = request.getSession();
			session.setAttribute("user", "고영은");
			
			RequestDispatcher rd = request.getRequestDispatcher("jsp/index.jsp");
			rd.forward(request, response);
		}else {
			request.setAttribute("msg", "error");
			RequestDispatcher rd = request.getRequestDispatcher("jsp/index.jsp");
			rd.forward(request, response);
		}
	}
}
