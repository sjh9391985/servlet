package com.douzone.guestbook.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.douzone.guestbook.dao.GuestBookDao;
import com.douzone.guestbook.vo.GuestBookVo;

public class GuestBookController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String action = request.getParameter("a");
		GuestBookVo vo = new GuestBookVo();
		if ("deleteform".equals(action)) {
			String noaction = request.getParameter("no");
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/deleteform.jsp");
			rd.forward(request, response);
			

		} else if ("add".equals(action)) {
			request.setCharacterEncoding("utf-8");

			String name = request.getParameter("name");
			String password = request.getParameter("password");
			String message = request.getParameter("message");

			vo = new GuestBookVo();

			vo.setName(name);
			vo.setPassword(password);
			vo.setMessage(message);

			new GuestBookDao().insert(vo);

			response.sendRedirect(request.getContextPath()+"/gb?");

		} else if ("delete".equals(action)) {
			request.setCharacterEncoding("utf-8");
			String num = request.getParameter("no");
			String pw = request.getParameter("password");

			long number = Long.valueOf(num).longValue();

			 vo = new GuestBookVo();

			vo.setNo(number);
			vo.setPassword(pw);
			new GuestBookDao().delete(vo);

			response.sendRedirect(request.getContextPath()+"/gb?");

		} else {
			// 1. 요청처리
			List<GuestBookVo> list = new GuestBookDao().findAll();

			// 2. 객체 저장
			request.setAttribute("list", list);

			// 3. view 포워딩
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/index.jsp");
			rd.forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
