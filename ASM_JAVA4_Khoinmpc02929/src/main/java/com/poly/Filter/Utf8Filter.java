package com.poly.Filter;

//package Filter;
//
//import java.io.IOException;
//
//import javax.servlet.FilterChain;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebFilter;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//@WebFilter("/*")
//public class Utf8Filter implements HttpFilter {
//
//	public void doFilter2(HttpServletRequest req, HttpServletResponse resp, FilterChain chain) throws ServletException, IOException {
//		String lang = req.getParameter("lang");
//		if(lang != null) {
//			req.getSession().setAttribute("lang", lang);
//		}
//		chain.doFilter(req, resp);
//	}
//
//	public void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain)
//			throws IOException, ServletException {
//		request.setCharacterEncoding("utf-8");
//		response.setCharacterEncoding("utf-8");
//		chain.doFilter(request, response);
//		
//	}
//}
