package com.poly.Filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entity.User;

@WebFilter("/admin/*")
public class AuthFilter implements HttpFilter {

	@Override
	public void doFilter(HttpServletRequest req, HttpServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		User user = (User) req.getSession().getAttribute("user");
		String uri = req.getRequestURI();
		String error = "";
		if (user == null) {
			error = "Vui lòng đăng nhập";
		} else if (!user.getAdmin() && !uri.contains("admin/Trang-chu-Admin")) {
			error = "Phải là quản trị viên";
		}
		if (!error.isEmpty()) {

			req.getSession().setAttribute("error", error);
			req.getSession().setAttribute("uri_secure", uri);
			resp.sendRedirect(req.getContextPath() + "/account/Dang-nhap");
		} else {
			chain.doFilter(req, resp);
		}
	}

}
