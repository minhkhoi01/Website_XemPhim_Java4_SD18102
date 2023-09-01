package com.poly.Account;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.poly.DAO.UserDao;
import com.poly.Tienich.sendEmail;

import Entity.Email;
import Entity.User;

@WebServlet({ "/account/Dang-nhap", "/account/Dang-ky", "/account/Quen-mat-khau", "/account/Doi-mat-khau",
		"/account/Cap-nhat-tai-khoan", "/account/Trang-chu" })

public class AccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		if (uri.contains("Dang-nhap")) {

			req.getSession().removeAttribute("user");
			req.getRequestDispatcher("/views/TaiKhoan/DangNhap.jsp").forward(req, resp);
		} else if (uri.contains("Dang-ky")) {
			req.getRequestDispatcher("/views/TaiKhoan/DangKy.jsp").forward(req, resp);
		} else if (uri.contains("Cap-nhat-tai-khoan")) {
			req.getRequestDispatcher("/views/TaiKhoan/CapNhatTK.jsp").forward(req, resp);

		}

		else if (uri.contains("Quen-mat-khau")) {
			req.getRequestDispatcher("/views/TaiKhoan/QuenMK.jsp").forward(req, resp);
		} else if (uri.contains("Doi-mat-khau")) {
			req.getRequestDispatcher("/views/TaiKhoan/DoiMK.jsp").forward(req, resp);
		} else if (uri.contains("Trang-chu")) {
			resp.sendRedirect(req.getContextPath() + "/User/Trang-Chu");
		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		if (uri.contains("Dang-nhap")) {
			this.doSignIn(req, resp);

		} else if (uri.contains("Dang-ky")) {
			this.doSignUp(req, resp);
		} else if (uri.contains("Cap-nhat-tai-khoan")) {
			this.doEditProfile(req, resp);
		}

		else if (uri.contains("Quen-mat-khau")) {
			this.quenMK(req, resp);
		} else if (uri.contains("Doi-mat-khau")) {
			this.doiMK(req, resp);
		}
	}

	private void doSignIn(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id = req.getParameter("username");
		String pw = req.getParameter("password");
		try {
			UserDao dao = new UserDao();
			User user = dao.findById(id);
			if (!user.getPassword().equals(pw)) {
				req.setAttribute("message", "Sai mật khẩu!");
			} else {

				if (user.getAdmin() == true) {
					req.setAttribute("message", "Đăng nhập thành công!");
					req.getSession().setAttribute("user", user);
					req.getSession().setAttribute("userId", user.getId());

					resp.sendRedirect(req.getContextPath() + "/admin/Trang-Chu-Admin");
					return;

				} else {
					req.setAttribute("message", "Đăng nhập thành công!");
					req.getSession().setAttribute("user", user);
					req.getSession().setAttribute("userId", user.getId());
					resp.sendRedirect(req.getContextPath() + "/User/Trang-Chu");
					return;
				}

			}

		} catch (Exception e) {
			req.setAttribute("message", "Sai tên đăng nhập!");
		}

		req.getRequestDispatcher("/views/TaiKhoan/DangNhap.jsp").forward(req, resp);

	}

	private void doSignUp(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		String pw = req.getParameter("password");
		String pw2 = req.getParameter("password2");
		String fullname = req.getParameter("fullname");
		String email = req.getParameter("email");
		req.setAttribute("username", id);
		req.setAttribute("password", pw);
		req.setAttribute("password2", pw2);
		req.setAttribute("fullname", fullname);
		req.setAttribute("email", email);
		try {
			UserDao dao = new UserDao();
			User user = dao.findById(id);
			User checkemail = dao.findByEmail(email);
			if (user != null) {

				req.setAttribute("message", "Username đã tồn tại!");
			} else if (!pw.equals(pw2)) {
				req.setAttribute("message", "Password không trùng khớp!");
			} else if (checkemail != null) {

				req.setAttribute("message", "Email này đã đăng ký!");
			} else {
				User entity = new User();
				BeanUtils.populate(entity, req.getParameterMap());
				dao.create(entity);
				System.out.println(checkemail);
				req.setAttribute("message", "Đăng ký thành công!");
				req.getRequestDispatcher("/views/TaiKhoan/DangNhap.jsp").forward(req, resp);
				
			}
		} catch (Exception e) {
			System.out.println(e);
			req.setAttribute("message", "Lỗi đăng ký!");
		}

		req.getRequestDispatcher("/views/TaiKhoan/DangKy.jsp").forward(req, resp);
	}

	private void doEditProfile(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		User user = (User) req.getSession().getAttribute("user");
		if (user == null) {
			req.getRequestDispatcher("Dang-nhap").forward(req, resp);
			return;
		}

		try {
			BeanUtils.populate(user, req.getParameterMap());
			UserDao dao = new UserDao();
			dao.update(user);
			req.setAttribute("message", "Cập nhật tài khoản thành công!");
		} catch (Exception e) {
			req.setAttribute("message", "Lỗi cập nhật tài khoản!");
		}

		req.getRequestDispatcher("/views/TaiKhoan/CapNhatTK.jsp").forward(req, resp);
	}

	private void doiMK(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User user = (User) req.getSession().getAttribute("user");
		String id = req.getParameter("id");
		String pw2 = req.getParameter("password2");
		String pw1 = req.getParameter("password1");
		String pw = req.getParameter("password");
		UserDao userDao = new UserDao();
		User user2 = userDao.findById(id);
		if (user == null) {
			req.getRequestDispatcher("/views/TaiKhoan/DangNhap.jsp").forward(req, resp);
			return;
		} else if (!user2.getPassword().equals(pw1)) {
			req.setAttribute("message", "Sai mật khẩu!");
		} else {
			try {
				if (!pw.equals(pw2)) {
					req.setAttribute("message", "New Confirm Password không khớp!");
				} else {
					BeanUtils.populate(user, req.getParameterMap());
					UserDao dao = new UserDao();
					dao.update(user);
					req.setAttribute("message", "Đổi mật khẩu thành công!");
				}
			} catch (Exception e) {
				req.setAttribute("message", "Lỗi đổi mật khẩu!");
			}

		}
		req.getRequestDispatcher("/views/TaiKhoan/DoiMK.jsp").forward(req, resp);
	}

	private void quenMK(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String email = req.getParameter("email");
			String username = req.getParameter("id");

			UserDao dao = new UserDao();
			User user = dao.findIdAndEmail(username, email);

			if (user == null) {
				req.setAttribute("message", "Username hoặc Email không tồn tại!");

			} else {
				Email email2 = new Email();
				email2.setFrom("anvltpc01625@fpt.edu.vn");
				email2.setPassword("giuvasczvneevpdq");
				email2.setTo(email);
				email2.setSubject("QUÊN MẬT KHẨU");
				StringBuilder gb = new StringBuilder();
				gb.append("Dear ").append(username).append(",").append("<br>");
				gb.append("Bạn đã sử dụng chức năng Quên mật khẩu <br>");
				gb.append("Mật khẩu của bạn là: ").append(user.getPassword());

				email2.setContent(gb.toString());

				sendEmail.send(email2);

				req.setAttribute("message", "Password đã được gửi đến Email!");
				email = null;
			}

		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("message", "Gửi Mail thất bại!Vui lòng kiểm tra lại Username hoặc Email");
		}
		req.getRequestDispatcher("/views/TaiKhoan/QuenMK.jsp").forward(req, resp);
	}
}
