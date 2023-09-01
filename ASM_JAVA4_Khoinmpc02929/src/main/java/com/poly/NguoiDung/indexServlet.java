package com.poly.NguoiDung;

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

@WebServlet({ "/User/Trang-Chu", "/User/Favorites"

})
public class indexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		if (uri.contains("Trang-Chu")) {
			trangChu(req, resp);
			page.b(req, resp, PageType.Trang_chu);
		} else if (uri.contains("Favorites")) {
			resp.sendRedirect(req.getContextPath() + "/User/MyFavoties");
		}

	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}

	protected void trangChu2(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			VideoDao videoDao = new VideoDao();
			List<Video> list = videoDao.findAll();

			req.setAttribute("videos", list);

		} catch (Exception e) {

		}
		page.b(req, resp, PageType.Trang_chu);
	}

	protected void trangChu(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int size = 9;
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
