package com.poly.NguoiDung;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poly.DAO.FavoriteDao;
import com.poly.DAO.UserDao;
import com.poly.DAO.VideoDao;
import com.poly.Tienich.PageType;
import com.poly.Tienich.page;
import com.poly.Tool.JpaUltils;

import Entity.Favorite;
import Entity.User;
import Entity.Video;

@WebServlet({ "/User/MyFavoties", "/User/Unlike" })
public class MyFavotiesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private EntityManager em = JpaUltils.getEntityManger();

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI();
		if (url.contains("MyFavoties")) {
			favorite(req, resp);
		}
		if (url.contains("Unlike")) {
			delete(req, resp);
			favorite(req, resp);
		}

	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI();

		if (url.contains("Delete")) {
			delete(req, resp);
			return;
		}

	}

	private void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");

		try {
			FavoriteDao dao = new FavoriteDao();
			Favorite favorite = dao.findById(id);

			dao.remove(id);
			req.setAttribute("favorite", favorite);
		} catch (Exception e) {
			req.setAttribute("message", "Lỗi: " + e.getMessage());
		}
		page.b(req, resp, PageType.Favorites);
	}

	private void favorite(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String username = (String) req.getSession().getAttribute("userId");
			User user = new User();
			user.setId(username);

			String jpql = "SELECT distinct o.video FROM Favorite o WHERE o.user=:id";
			TypedQuery<Video> query = em.createQuery(jpql, Video.class);
			query.setParameter("id", user);
			List<Video> list = query.getResultList();
			req.setAttribute("Videofavorite", list);

		} catch (Exception e) {

		}
		page.b(req, resp, PageType.Favorites);

	}
}
