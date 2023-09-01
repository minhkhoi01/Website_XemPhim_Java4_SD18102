package com.poly.Tienich;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections.map.HashedMap;

public class page {
	public static Map<PageType, page> pageRoute = new HashedMap();
	static {
		pageRoute.put(PageType.Trang_chu_Admin, new page("Trang chủ Admin", "/views/Admin/TrangChuAdmin.jsp", null));
		pageRoute.put(PageType.QL_Video, new page("Quản lý Video", "/views/Admin/QLVideo.jsp", null));
		pageRoute.put(PageType.QL_Users, new page("Quản lý Users", "/views/Admin/QLUsers.jsp", null));
		pageRoute.put(PageType.Report, new page("Reports", "/views/Admin/BaoCao.jsp", null));

	}
	static {
		pageRoute.put(PageType.Trang_chu, new page("Trang chủ", "/views/User/TrangChu.jsp", null));
		pageRoute.put(PageType.Favorites, new page("Yêu thích", "/views/User/YeuThich.jsp", null));
		pageRoute.put(PageType.Chi_tiet, new page("Chi tiết", "/views/User/ChiTiet.jsp", null));

	}

	public static void a(HttpServletRequest req, HttpServletResponse resp, PageType pageType)
	        throws ServletException, IOException {
	    page page = pageRoute.get(pageType);
	    req.setAttribute("page", page);
	    
	    if (!resp.isCommitted()) {
	        req.getRequestDispatcher("/views/Admin/layout.jsp").forward(req, resp);
	    } else {
	        // Xử lý khi phản hồi đã được gửi đi
	        // Điều này tuỳ thuộc vào yêu cầu cụ thể của bạn
	    }
	}

	public static void b(HttpServletRequest req, HttpServletResponse resp, PageType pageType)
	        throws ServletException, IOException {
	    page page = pageRoute.get(pageType);
	    req.setAttribute("page", page);
	    
	    if (!resp.isCommitted()) {
	        req.getRequestDispatcher("/views/User/layoutUser.jsp").forward(req, resp);
	    } else {
	        // Xử lý khi phản hồi đã được gửi đi
	        // Điều này tuỳ thuộc vào yêu cầu cụ thể của bạn
	    }
	}

	private String title;
	private String content;
	private String scrip;

	public page(String title, String content, String scrip) {
		super();
		this.title = title;
		this.content = content;
		this.scrip = scrip;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getScrip() {
		return scrip;
	}

	public void setScrip(String scrip) {
		this.scrip = scrip;
	}

}
