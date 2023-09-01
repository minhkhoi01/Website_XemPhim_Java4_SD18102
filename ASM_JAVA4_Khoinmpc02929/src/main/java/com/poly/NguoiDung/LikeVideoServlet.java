package com.poly.NguoiDung;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poly.DAO.FavoriteDao;
import com.poly.DAO.UserDao;
import com.poly.Tienich.PageType;
import com.poly.Tienich.page;

import Entity.Favorite;
import Entity.User;
import Entity.Video;

@WebServlet("/User/LikeVideo")
public class LikeVideoServlet extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id = req.getParameter("id");
		String page = req.getParameter("page");

		FavoriteDao dao = new FavoriteDao();
		Favorite favorite = new Favorite();
		Video video = new Video();
		video.setId(id);
		favorite.setVideo(video);

		String username = (String) req.getSession().getAttribute("userId");

		User user = new User();
		user.setId(username);
		favorite.setUser(user);
		favorite.setLikeDate(new Date());
		try {
			List<Favorite> favoritess = dao.findUserIdAndVideoId(user, (Video) video);
			if (favoritess != null) {
				req.setAttribute("thongbao1", "Video này đã thích");
			}
		} catch (Exception e) {
			e.printStackTrace();
			dao.create(favorite);
			req.setAttribute("thongbao1", "Video đã được thêm vào My Favorites");
		}
		if (page != null) {
			page = "/User/Trang-Chu";
		} else {

			page = "/User/WathVideo";
		}

		req.getRequestDispatcher(page).forward(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}

}
