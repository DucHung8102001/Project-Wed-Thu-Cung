package com.laptrinhjavaweb.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.laptrinhjavawed.imp.DAO.DongVat_imp;
import com.laptrinhjavawed.imp.DAO.LoaiCho_imp;
import com.laptrinhjavawed.imp.DAO.LoaiMeo_imp;
import com.laptrinhjavawed.model.DongVat;
import com.laptrinhjavawed.model.Loai_Dong_Vat;

/**
 * Servlet implementation class Table
 */
@WebServlet("/managerDog")
public class ManagerDog extends HttpServlet {
	private static final long serialVersionUID = 1L;
	LoaiCho_imp loaiCho_imp= new LoaiCho_imp();
	LoaiMeo_imp loaiMeo_imp = new LoaiMeo_imp();
	DongVat_imp dongVat_imp = new DongVat_imp();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ManagerDog() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		List<Loai_Dong_Vat> list= loaiCho_imp.getAllLoaiCho();
		request.setAttribute("list", list);
		int isDog=1;
		List<DongVat> listDongVat= dongVat_imp.getAllDongVat(isDog);
		request.setAttribute("listDongVat", listDongVat);
		request.getRequestDispatcher("/view/DogManager.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
