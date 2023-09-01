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
//import Share.RRSharer;
//@WebFilter("/*")
//public class AppFilter implements HttpFilter{
//
//	@Override
//	public void doFilter(HttpServletRequest req, HttpServletResponse resp, FilterChain chain)
//			throws IOException, ServletException {
//		RRSharer.add(req,resp);
//		chain.doFilter(req, resp);
//		RRSharer.remove();
//		
//	}
//
//}
