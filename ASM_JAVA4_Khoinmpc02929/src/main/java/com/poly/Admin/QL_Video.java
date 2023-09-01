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

import com.poly.DAO.VideoDao;
import com.poly.Tienich.PageType;
import com.poly.Tienich.page;
import com.poly.Tienich.upload;

import Entity.Video;

@WebServlet({ "/admin/Video", "/admin/CreateVD", "/admin/UpdateVD", "/admin/DeleteVD", "/admin/ResetVD",
		"/admin/EditVD/*" })
@MultipartConfig
public class QL_Video extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI();
		if (url.contains("EditVD")) {
			edit(req, resp);
		}
		if (url.contains("DeleteVD")) {
			delete(req, resp);
		}
		if (url.contains("ResetVD")) {
			reset(req, resp);
		}
		Video video = new Video();
		fill(req, resp);

		req.setAttribute("video", video);
		page.a(req, resp, PageType.QL_Video);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI();
		if (url.contains("CreateVD")) {
			this.create(req, resp);
			return;
		}
		if (url.contains("UpdateVD")) {
			update(req, resp);
			return;
		}
		if (url.contains("DeleteVD")) {
			delete(req, resp);
			return;
		}
		if (url.contains("ResetVD")) {
			reset(req, resp);
			return;
		}

	}

	private void create(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Video video = new Video();
		String id = req.getParameter("id");
		String title = req.getParameter("title");

		try {
			if (id.isEmpty()) {
				req.setAttribute("message", "Chưa nhập VIDEO ID");
			} else if (title.isEmpty()) {
				req.setAttribute("message", "Chưa nhập VIDEO TITLE");
			} else {
				String hinh = req.getParameter("hinh");
				BeanUtils.populate(video, req.getParameterMap());
				video.setPoster(hinh);
				VideoDao videoDao = new VideoDao();
				videoDao.create(video);

				req.setAttribute("video", video);
				req.setAttribute("message", "Thêm Video thành công!");
			}
		} catch (Exception e) {
			req.setAttribute("message", "Thêm Video thất bại!");
			req.setAttribute("message", "Lỗi: " + e.getMessage());
		}
		fill(req, resp);
		page.a(req, resp, PageType.QL_Video);
	}

	private void update(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Video video = new Video();
		String hinh2 = req.getParameter("hinh2");
		String hinh = req.getParameter("hinh");

		try {
			if (hinh.isEmpty()) {
				BeanUtils.populate(video, req.getParameterMap());
				VideoDao videoDao = new VideoDao();
				Video videoFind = videoDao.findById(video.getId());

				video.setPoster(hinh2);
				videoDao.update(video);
				req.setAttribute("video", video);
				req.setAttribute("message", "Cập nhật Video thành công!");
				fill(req, resp);

			} else {
				BeanUtils.populate(video, req.getParameterMap());
				VideoDao videoDao = new VideoDao();
				Video videoFind = videoDao.findById(video.getId());

				video.setPoster(hinh);
				videoDao.update(video);
				req.setAttribute("video", video);
				req.setAttribute("message", "Cập nhật Video thành công!");
				fill(req, resp);
			}
		} catch (Exception e) {
			req.setAttribute("message", "Lỗi: " + e.getMessage());
		}
		page.a(req, resp, PageType.QL_Video);
	}

	private void edit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id = req.getParameter("id");
		if (id == null) {
			req.setAttribute("message", "không có Id!");
			req.getRequestDispatcher("/views/Admin/QLVideo.jsp").forward(req, resp);
			return;
		}
		try {
			VideoDao videoDao = new VideoDao();
			Video video = videoDao.findById(id);

			req.setAttribute("video", video);

		} catch (Exception e) {
			req.setAttribute("message", "Lỗi: " + e.getMessage());
		}
		fill(req, resp);
		page.a(req, resp, PageType.QL_Video);
	}

	private void findAll(HttpServletRequest req, HttpServletResponse resp) {

		try {
			VideoDao videoDao = new VideoDao();
			List<Video> list = videoDao.findAll();

			req.setAttribute("videos", list);
			req.setAttribute("countVD", list.size());

		} catch (Exception e) {
			req.setAttribute("message", "Lỗi: " + e.getMessage());
		}

	}

	private void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		if (id == null) {
			req.setAttribute("message", "không có Id!");
			page.a(req, resp, PageType.QL_Video);
			return;
		}
		try {
			VideoDao videoDao = new VideoDao();
			Video video = videoDao.findById(id);
			if (video == null) {
				req.setAttribute("message", "Video không tồn tại!");
				req.getRequestDispatcher("/views/Admin/QLVideo.jsp").forward(req, resp);
				return;
			}
			videoDao.remove(id);
			req.setAttribute("video", video);
			req.setAttribute("message", "Xóa Video thành công!");
			fill(req, resp);
		} catch (Exception e) {
			req.setAttribute("message", "Lỗi: " + e.getMessage());
		}
		page.a(req, resp, PageType.QL_Video);
	}

	private void reset(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Video video = new Video();
		video.setPoster("nen.jpg");
		req.setAttribute("video", video);
		fill(req, resp);

		page.a(req, resp, PageType.QL_Video);
	}

	protected void fill(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int size = 10;
		VideoDao videoDao = new VideoDao();
		List<Video> list = videoDao.findAll();
		int page2 = 0;
		String page = req.getParameter("trang");
		Video video = new Video();
		if (page == null || page.equals("page1")) {
			page2 = 0;
		} else if (page.equals("page3")) {
			page2 = page2 + 10;
		} else if (page.equals("page2")) {
			page2 = 10 - 10;
		} else if (page.equals("page4") && page2 <= list.size()) {
			page2 = list.size() - 10;
		}

		req.setAttribute("videos", videoDao.findpage(page2, size));
		req.setAttribute("countVD", list.size());

	}
}
