package com.poly.Admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.poly.DAO.UserDao;
import com.poly.Tienich.PageType;
import com.poly.Tienich.page;

import Entity.User;


@WebServlet({ "/admin/User", "/admin/Create", "/admin/Update", "/admin/Delete", "/admin/Reset", "/admin/Edit/*" })
@MultipartConfig
public class QL_User extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
     String url = req.getRequestURI();
     if(url.contains("Edit")) {
    	edit(req,resp) ;
     } 
     if(url.contains("Delete")) {
     	delete(req,resp) ;
      } 
     if(url.contains("Reset")) {
     	reset(req,resp);
      } 
          User user= new User();
          fill(req, resp);
         
          req.setAttribute("user", user);
      	page.a(req, resp, PageType.QL_Users);

	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		  String url = req.getRequestURI();
		  if(url.contains("Create")) {
			  this.create(req, resp);
			  return;
		  }
		  if(url.contains("Update")) {
			  update(req, resp);
			  return;
		  }
		  if(url.contains("Delete")) {
			  delete(req, resp);
			  return;
		  }
		  if(url.contains("Reset")) {
			  reset(req, resp);
			  return;
		  }
	}

	private void create(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		String pass = req.getParameter("password");
		String fullname = req.getParameter("fullname");
		String email = req.getParameter("email");
		User user= new User();
		try {
			if(id.isEmpty()) {
				req.setAttribute("message", "Chưa nhập Tên đăng  nhập!");
			}else if(pass.isEmpty()) {
				req.setAttribute("message", "Chưa nhập Mật khẩu!");
			}else if(fullname.isEmpty()) {
				req.setAttribute("message", "Chưa nhập Họ và tên!");
			}else if(email.isEmpty()) {
				req.setAttribute("message", "Chưa nhập Email!");
			}else {
		BeanUtils.populate(user, req.getParameterMap());
		UserDao userDao = new UserDao();
		userDao.create(user);
		
		req.setAttribute("user", user);
		req.setAttribute("message", "Thêm User thành công!");
			}
	} catch (Exception e) {
		req.setAttribute("message", "Thêm User thất bại!");
		req.setAttribute("message", "Lỗi: "+e.getMessage());
	}
		findAll(req, resp);
		page.a(req, resp, PageType.QL_Users);
	}
	
	private void update(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 User user= new User();
	
	try {
		BeanUtils.populate(user, req.getParameterMap());
		UserDao userDao = new UserDao();
		String username = req.getParameter("id");
		User userfind = userDao.findById(username);
		if(username.equals("")) {
			req.setAttribute("message", "Vui lòng nhập Tên đăng nhập");
		}		
		else if(userfind == null) {
	req.setAttribute("message", "Tên đăng nhập không tồn tại!!");
}else {
		userDao.update(user);
		req.setAttribute("user", user);
		req.setAttribute("message", "Cập nhật User thành công!");		
}

	} catch (Exception e) {
		req.setAttribute("message", "Lỗi: "+e.getMessage());
		
	}
	findAll(req, resp);
	page.a(req, resp, PageType.QL_Users);
	}
	private void edit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	String id = req.getParameter("id");
	if(id ==null) {
		req.setAttribute("message", "Vui lòng nhập Tên đăng nhập");
		page.a(req, resp, PageType.QL_Users);
		return;
	}
	try {
		UserDao userDao = new UserDao();
		User user = userDao.findById(id);
		
		req.setAttribute("user", user);
		
	} catch (Exception e) {
		req.setAttribute("message", "Lỗi: "+e.getMessage());
	}
	findAll(req, resp);
	page.a(req, resp, PageType.QL_Users);
	}
	private void findAll(HttpServletRequest req, HttpServletResponse resp) {
	
	try {
		UserDao userDao = new UserDao();
		List<User> list = userDao.findAll();
				
		req.setAttribute("users", list);
		req.setAttribute("count", list.size());

	} catch (Exception e) {
		req.setAttribute("message", "Lỗi: "+e.getMessage());
	}

	}

	private void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		if(id.equals("")) {
			req.setAttribute("message", "không có Tên đăng nhập!");
		}else 
		try {
			UserDao userDao = new UserDao();
			User user = userDao.findById(id);
			if(user == null) {
				req.setAttribute("message", "User không tồn tại!");
			
			}
			userDao.remove(id);
			req.setAttribute("user", user);
			req.setAttribute("message", "Xóa User thành công!");
			findAll(req, resp);
		}
		catch (Exception e) {
			req.setAttribute("message", "Lỗi: "+e.getMessage());
		}
		page.a(req, resp, PageType.QL_Users);
		}
	
	private void reset(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User user = new User();
		 req.setAttribute("user", user);
		 findAll(req, resp);
		 
			page.a(req, resp, PageType.QL_Users);
	}
	
	
	protected void fill(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		int size =10;
		UserDao userDao= new UserDao();
		List<User> list = userDao.findAll();
		int page2 =0;
		String page = req.getParameter("trang");
		if(page == null||page.equals("page1")) {
		page2 = 0;
		}else if(page.equals("page3")) {
		page2 = page2+ 10;
		}else if(page.equals("page2")) {
		page2 = 10 - 10;	
		}else if(page.equals("page4")&& page2 <= list.size()) {
		page2 = list.size()-10;
		}

req.setAttribute("users", userDao.findpage(page2, size));
req.setAttribute("count", list.size());


	} 


}
