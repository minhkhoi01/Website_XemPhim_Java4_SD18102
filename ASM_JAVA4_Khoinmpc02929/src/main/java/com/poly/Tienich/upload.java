package com.poly.Tienich;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

public class upload {
	public static String upload1(String fielName, HttpServletRequest req, String folder, String fileName)
			throws IOException, ServletException {
		Part file = req.getPart(fielName);

		if (file == null || file.getSize() == 0) {
			return "";
		}

		if (folder == null) {
			folder = "/uploads";
		}
		if (fileName == null) {
			fileName = Path.of(file.getSubmittedFileName()).getFileName().toString();
		} else {
//		fileName += "."+ FileNameUtils.getExtension(Path.of(file.getSubmittedFileName()).toString());
		}
		String uploadFolder = req.getServletContext().getRealPath(folder);
		Path uploadPath = Paths.get(uploadFolder);

		if (!Files.exists(uploadPath)) {
			Files.createDirectory(uploadPath);
		}
		file.write(Paths.get(uploadPath.toString(), fileName).toString());
		return fileName;

	}
}
