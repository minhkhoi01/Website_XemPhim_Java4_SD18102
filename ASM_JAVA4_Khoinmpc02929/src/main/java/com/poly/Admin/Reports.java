package com.poly.Admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poly.DAO.FavoriteDao;
import com.poly.DAO.ShareDao;
import com.poly.DAO.VideoDao;
import com.poly.Tienich.PageType;
import com.poly.Tienich.page;

import Entity.FavoriteRP;
import Entity.FavoriteUserRP;
import Entity.ShareRP;
import Entity.Video;

@WebServlet("/admin/Reports")
public class Reports extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RPFavotites(req, resp);
		RPFavotitesUser(req, resp);
		RPShare(req, resp);
		page.a(req, resp, PageType.Report);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}

	protected void RPFavotites(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			FavoriteDao dao = new FavoriteDao();
			List<FavoriteRP> list = dao.RB();

			req.setAttribute("favorites", list);
		} catch (Exception e) {
			req.setAttribute("Message", "Lỗi: " + e.getMessage());
		}
	}

	protected void RPFavotitesUser(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		try {

			String videoTitle = req.getParameter("videoTitle");
			VideoDao videoDao = new VideoDao();
			List<Video> videoList = videoDao.findFavorites();
			if (videoTitle == null && videoList.size() > 0) {
				videoTitle = videoList.get(0).getId();
			}
			FavoriteDao dao = new FavoriteDao();
			List<FavoriteUserRP> list = dao.UserRB(videoTitle);

			req.setAttribute("videoTitle", videoTitle);
			req.setAttribute("videoList", videoList);

			req.setAttribute("favoritesUser", list);
		} catch (Exception e) {
			req.setAttribute("Message", "Lỗi: " + e.getMessage());
		}
	}

	protected void RPShare(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {

			String videoTitle = req.getParameter("videoTitle2");
			VideoDao videoDao = new VideoDao();
			List<Video> videoList = videoDao.findShare();
			if (videoTitle == null && videoList.size() > 0) {
				videoTitle = videoList.get(0).getId();
			}
			ShareDao dao = new ShareDao();
			List<ShareRP> list = dao.ShareRP(videoTitle);

			req.setAttribute("videoTitle2", videoTitle);
			req.setAttribute("videoList2", videoList);

			req.setAttribute("shareRP", list);
		} catch (Exception e) {
			req.setAttribute("Message", "Lỗi: " + e.getMessage());
		}
	}
}
