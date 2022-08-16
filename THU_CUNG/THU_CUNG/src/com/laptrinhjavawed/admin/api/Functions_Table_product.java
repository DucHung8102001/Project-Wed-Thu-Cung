package com.laptrinhjavawed.admin.api;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.laptrinhjavawed.imp.DAO.DongVat_imp;
import com.laptrinhjavawed.model.DongVat;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, maxFileSize = 1024 * 1024 * 10, maxRequestSize = 1024 * 1024 * 50)
@WebServlet("/api-table-product")
public class Functions_Table_product extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DongVat_imp dongVat_imp = new DongVat_imp();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Functions_Table_product() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
	
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/plain	");

		ServletContext servletContext = this.getServletConfig().getServletContext();
		DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
		ServletFileUpload servletFileUpload = new ServletFileUpload(diskFileItemFactory);

		// tao uploads
		String path = servletContext.getRealPath("/uploads");
		System.out.println(path);
		if (!Files.exists(Paths.get(path))) { 
			Files.createDirectory(Paths.get(path));
		}

		DongVat dv = new DongVat();
	
		
		
		try {

			List<FileItem> items = servletFileUpload.parseRequest(request);
			for (FileItem Item : items) {
				if (Item.getFieldName().equals("categoryId")) {
					dv.setGiong(Integer.parseInt(Item.getString()));
				} else if (Item.getFieldName().equals("isDog")) {
					dv.setId_cho(Integer.parseInt(Item.getString()));
				} else {
					if (Item.getFieldName().equals("isCat")) {
						dv.setId_meo(Integer.parseInt(Item.getString()));
					} else if (Item.getFieldName().equals("namesp")) {
						dv.setName(Item.getString());
					} else if (Item.getFieldName().equals("tuoisp")) {
						dv.setTuoi(Item.getString());
					} else if (Item.getFieldName().equals("pricesp")) {
						dv.setPrice(Double.parseDouble(Item.getString()));
					} else if (Item.getFieldName().equals("gioitinhsp")) {
						dv.setGoi_tinh(Item.getString());
					} else if (Item.getFieldName().equals("datiemchungsp")) {
						dv.setDtchung(Item.getString());
					} else if (Item.getFieldName().equals("baohanhsuckhoesp")) {
						dv.setbHSK(Item.getString());
					} else if (Item.getFieldName().equals("motatthemsp")) {
						dv.setMota(Item.getString());
					} else if (Item.getFieldName().equals("imagesp")) {
						if (Item.getSize() > 0) {// neu co file
							String originalFileName =Item.getName();

							dv.setAnh(originalFileName);

							File file = new File(path + "/" + originalFileName);
							Item.write(file); 

						}
					}
				}
			}

		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		boolean checkAddProduct = dongVat_imp.insertDV(dv);



	}


}
