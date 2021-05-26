package com.douzone.emaillist.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.douzone.emaillist.dao.EmaillistDao;
import com.douzone.emaillist.vo.EmaillistVo;

public class EmaillistController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		/* post 방식으로 전달받는 파라미터 값의 인코딩 처리 */
		request.setCharacterEncoding("utf-8");

		/* Action 을 받아야함 */
//		String action = request.getParameter("a");
//		if ("form".equals(action)) {
//			System.out.println("form");
//		} else if ("add".equals(action)) {
//			System.out.println("add!!");
//		} else { // 원하는 요청이 들어오지 않을때 처리하는 방식
//			System.out.println("list"); // default 값으로 돌아가도록 함 , 따로 url을 달지않아도 main 화면으로 오게함
//		}

		/* Action 을 받아야함 */
		String action = request.getParameter("a");
		
		
		if ("form".equals(action)) {

			// 1. view 포워딩
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/form.jsp");
			rd.forward(request, response); // -> index.jsp 로 들어가서 forward

		} else if ("add".equals(action)) {
			//insert 는 redirect 방식으로 보냄(forward : X)
			request.setCharacterEncoding("utf-8");
			
			//1. 요청처리
			long no = Long.parseLong(request.getParameter("no"));
			String fisrtName = request.getParameter("fn");
			String lastName = request.getParameter("ln");
			String email = request.getParameter("email");

			EmaillistVo vo = new EmaillistVo();

			vo.setNo(no);
			vo.setFirstName(fisrtName);
			vo.setLastName(lastName);
			vo.setEmail(email);
			new EmaillistDao().insert(vo);
			
			//2. redirect 응답
			response.sendRedirect(request.getContextPath()+"/el?");

		} else { // 원하는 요청이 들어오지 않을때 처리하는 방식
			// 1. 요청처리
			List<EmaillistVo> list = new EmaillistDao().findAll(); // default 값으로 돌아가도록 함 , 따로 url을 달지않아도 main 화면으로 오게함

			// 2. request 범위에 데이터(객체) 저장 .. list 이름으로 데이터 저장
			request.setAttribute("list", list);

			// 3. view로 포워딩
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/index.jsp");
			rd.forward(request, response); // -> index.jsp 로 들어가서 forward

		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
