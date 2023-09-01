package com.poly.Admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poly.DAO.VideoDao;
import com.poly.Tienich.PageType;
import com.poly.Tienich.page;

import Entity.Video;

@WebServlet({ "/admin/Trang-Chu-Admin", "/admin/QL-Users", "/admin/QL-Video", "/admin/Bao-cao", "/admin/WathVideo" })

public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		if (uri.contains("Trang-Chu-Admin")) {
			trangChu(req, resp);
			page.a(req, resp, PageType.Trang_chu_Admin);
		} else if (uri.contains("QL-Users")) {
			resp.sendRedirect(req.getContextPath() + "/admin/User");
		} else if (uri.contains("QL-Video")) {
			resp.sendRedirect(req.getContextPath() + "/admin/Video");
		} else if (uri.contains("Bao-cao")) {
		} else if (uri.contains("WathVideo")) {
			resp.sendRedirect(req.getContextPath() + "/User/WathVideo");
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}

	protected void trangChu(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int size = 8;
		VideoDao videoDao = new VideoDao();
		String page = req.getParameter("Page");
		List<Video> list = videoDao.findAll();
		int maxpage = (int) Math.ceil(list.size() / (double) size);
		req.setAttribute("maxpage", maxpage);
		List<Video> video = null;
		if (page == null || Integer.valueOf(page) > maxpage) {
			video = videoDao.findpage(0, size);
			req.setAttribute("trang", 1);
		} else if (Integer.valueOf(page) == 2) {
			video = videoDao.findpage(Integer.valueOf(page) + 6, size);
			req.setAttribute("trang", Integer.valueOf(page));
		} else if (Integer.valueOf(page) == 3) {
			video = videoDao.findpage(Integer.valueOf(page) + 13, size);
			req.setAttribute("trang", Integer.valueOf(page));
		} else if (Integer.valueOf(page) == 4) {
			video = videoDao.findpage(Integer.valueOf(page) + 20, size);
			req.setAttribute("trang", Integer.valueOf(page));
		} else {
			video = videoDao.findpage(Integer.valueOf(page) - 1, size);
			req.setAttribute("trang", Integer.valueOf(page));
		}

		req.setAttribute("videos", video);

	}

}
