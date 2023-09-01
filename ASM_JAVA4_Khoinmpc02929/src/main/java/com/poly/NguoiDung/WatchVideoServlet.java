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

@WebServlet("/User/WathVideo")
public class WatchVideoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			VideoDao videoDao = new VideoDao();
			List<Video> list = videoDao.findAll();

			req.setAttribute("videoss", list);

		} catch (Exception e) {

		}

		String id = req.getParameter("id");
		if (id != null) {

			VideoDao dao = new VideoDao();

			Video video = dao.findById(id);

			req.setAttribute("videos", video);
		}

		if (id == null) {

		}
		page.b(req, resp, PageType.Chi_tiet);
		view(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id = req.getParameter("id");
		if (id != null) {

			VideoDao dao = new VideoDao();

			Video video = dao.findById(id);

			req.setAttribute("videos", video);
		}

		if (id == null) {

		}

		page.b(req, resp, PageType.Chi_tiet);

	}

	protected void view(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");

		VideoDao videoDao = new VideoDao();
		Video video = videoDao.findById(id);
		int views = video.getViews();
		video.setActive(video.getActive());
		video.setDescription(video.getDescription());
		video.setId(id);
		video.setPoster(video.getPoster());
		video.setTitle(video.getTitle());
		video.setViews(views + 1);
		videoDao.update(video);

	}

}
