package com.laptrinhjavawed.controller.wed;

import java.util.ArrayList;
import java.util.List;
import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.laptrinhjavawed.imp.DAO.DongVat_imp;
import com.laptrinhjavawed.imp.DAO.LoaiCho_imp;
import com.laptrinhjavawed.imp.DAO.LoaiMeo_imp;
import com.laptrinhjavawed.model.Card_Thu_cung;
import com.laptrinhjavawed.model.DongVat;
import com.laptrinhjavawed.model.Loai_Dong_Vat;
import com.laptrinhjavawed.utils.SessionUtils;



@WebServlet(urlPatterns = { "/Product" })
public class Product extends HttpServlet {
	private static final long serialVersionUID = 1L;
	LoaiCho_imp loaiCho_imp= new LoaiCho_imp();
	LoaiMeo_imp loaiMeo_imp = new LoaiMeo_imp();
	DongVat_imp dongVat_imp = new DongVat_imp();
	
	public Product() {
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {	
		String loai = request.getParameter("Loai");
		String id = request.getParameter("id");
		List<DongVat> listDV = null;
		String name = "";
		if(loai.equals("cho")) {
			name = loaiCho_imp.typeNameDog(Integer.parseInt(id));
			listDV = dongVat_imp.getAllDongVatProduct(Integer.parseInt(id), 1, 0);
		}else if(loai.equals("meo")) {
			name = loaiMeo_imp.typeNameCat(Integer.parseInt(id));
			listDV = dongVat_imp.getAllDongVatProduct(Integer.parseInt(id), 0, 1);
		}
		if(SessionUtils.getInstance().getValue(request, "giohangs")!=null) {
		List<Card_Thu_cung> listSize = (List<Card_Thu_cung>) SessionUtils.getInstance().getValue(request, "giohangs");
		request.setAttribute("listSize", listSize.size());
		}
		request.setAttribute("listDV", listDV);
		request.setAttribute("name", name);
		request.getRequestDispatcher("/view/Product.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
