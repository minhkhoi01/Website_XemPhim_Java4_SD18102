package com.poly.Filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entity.User;

@WebFilter({ "/account/Cap-nhat-tai-khoan", "/account/Doi-mat-khau", "/User/LikeVideo", "/User/ShareVideo",
		"/User/MyFavoties" })
public class CheckLogin implements HttpFilter {

	@Override
	public void doFilter(HttpServletRequest req, HttpServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		String uri = req.getRequestURI();
		User user = (User) req.getSession().getAttribute("user");
		String error = "";
		if (user == null) {
			error = resp.encodeUrl("Please Log in");
			req.getSession().setAttribute("HoLy", "Vui lòng đăng nhập");

		}
		if (!error.isEmpty()) {

			resp.sendRedirect(req.getContextPath() + "/account/Dang-nhap?error=" + resp.encodeURL(error));

		} else {

			chain.doFilter(req, resp);
		}

	}

	public void destroy() {

	}

	public void init(FilterConfig fConfig) throws ServletException {

	}
}
