package com.poly.NguoiDung;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poly.DAO.ShareDao;
import com.poly.Tienich.sendEmail;

import Entity.Email;
import Entity.Share;
import Entity.User;
import Entity.Video;

@WebServlet("/User/ShareVideo")
public class ShareVideoServlet extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id = req.getParameter("id");
		if (id == null) {
			resp.sendRedirect(req.getContextPath() + "/User/Trang-Chu");
			return;
		}
		req.setAttribute("videoId", id);
		req.getRequestDispatcher("/views/User/Share.jsp").forward(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		{
			try {
				String email = req.getParameter("email");
				String id = req.getParameter("id");

				if (id == null) {
					req.setAttribute("message", "Video không tồn tại!");

				} else {
					String videoLink = req.getContextPath() + "/User/WathVideo?action=watch&id=" + id;
		            // Tạo nội dung email
		            String emailContent = "Dear,<br>";
		            emailContent += "Bấm vào đây để xem video: <a href='" + videoLink + "'>View Video</a>";

					
					Email email2 = new Email();
					email2.setFrom("khoinmpc02929@fpt.edu.vn");
					email2.setPassword("rpqthmayvxehyuqt");
					email2.setTo(email);
					email2.setSubject("Gửi Video cho xem nè");
					email2.setContent(emailContent);

					StringBuilder gb = new StringBuilder();
					gb.append("Dear ").append("<br>");
					gb.append("Bấm vào để xem ").append(String.format("<a href='/User/WathVideo?action=watch&id='>View Video</a>", id));
					
					email2.setContent(gb.toString());
					sendEmail.send(email2);
					ShareDao dao = new ShareDao();
					Share share = new Share();
					share.setEmail(email);
					share.setShareDate(new Date());
					String username = (String) req.getSession().getAttribute("userId");
					User user = new User();
					user.setId(username);

					share.setUser(user);
					Video video = new Video();

					video.setId(id);
					share.setVideo(video);

					dao.create(share);

					req.setAttribute("message", "Video đã được gửi đến Email!");
				}

			} catch (Exception e) {
				e.printStackTrace();
				req.setAttribute("message", "Gửi Mail thất bại!");
			}
			req.getRequestDispatcher("/views/User/Share.jsp").forward(req, resp);

		}
	}

}
