package com.laptrinhjavawed.api;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.laptrinhjavawed.imp.DAO.Card_Thu_CungImp;
import com.laptrinhjavawed.imp.DAO.DongVat_imp;
import com.laptrinhjavawed.model.Account;
import com.laptrinhjavawed.model.Card_Thu_cung;
import com.laptrinhjavawed.model.DongVat;
import com.laptrinhjavawed.utils.SessionUtils;

@WebServlet(urlPatterns = { "/api-details" })
public class DetailsApi extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DongVat_imp dongVat_imp = new DongVat_imp();
	Card_Thu_CungImp card_Thu_CungImp = new Card_Thu_CungImp();

	public DetailsApi() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	@Override
	protected void doDelete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		String id = request.getParameter("id");
		
		List<Card_Thu_cung> listCart = (List<Card_Thu_cung>) SessionUtils.getInstance().getValue(request, "giohangs");
		Account acount = (Account) SessionUtils.getInstance().getValue(request, "ACCOUNT");
		if (SessionUtils.getInstance().getValue(request, "giohangs") != null) {
			int vitri = kiemTraSanPhamDaTonTai(request, Integer.parseInt(id));
			listCart.remove(vitri);
				card_Thu_CungImp.DeleteCardByIdProduct(acount.getId(), Integer.parseInt(id));
			if (listCart.size() == 0) {
				SessionUtils.getInstance().removeValue(request, "giohangs");
			}

		}
		out.println(listCart.size());

	}

	@Override
	protected void doPut(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String count = request.getParameter("count");

		Account acount = (Account) SessionUtils.getInstance().getValue(request, "ACCOUNT");
		if (SessionUtils.getInstance().getValue(request, "giohangs") != null) {
			List<Card_Thu_cung> listCart = (List<Card_Thu_cung>) SessionUtils.getInstance().getValue(request, "giohangs");
			int vitri = kiemTraSanPhamDaTonTai(request, Integer.parseInt(id));
			listCart.get(vitri).setCount(Integer.parseInt(count));
			// insert user

			card_Thu_CungImp.UpdateCount(Integer.parseInt(count), acount.getId(), Integer.parseInt(id));
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//lay data Card dc gui tu ajax

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		String id = request.getParameter("id");
//		String isDog = request.getParameter("isDog");
		Account acount = (Account) SessionUtils.getInstance().getValue(request, "ACCOUNT");
		DongVat dv = dongVat_imp.getDongVatById(Integer.parseInt(id));
		if (SessionUtils.getInstance().getValue(request, "giohangs") == null) {
			ArrayList<Card_Thu_cung> list = new ArrayList<>();
			Card_Thu_cung card_Thu_cung = new Card_Thu_cung(acount.getId(), dv.getId(), dv.getName(), dv.getAnh(),
					dv.getPrice(), 1);

			list.add(card_Thu_cung);
			// insert user
			SessionUtils.getInstance().putValue(request, "giohangs", list);
			card_Thu_CungImp.InsertCard(card_Thu_cung);
		} else {
			int vitri = kiemTraSanPhamDaTonTai(request, Integer.parseInt(id));
			if (vitri == -1) {
				List<Card_Thu_cung> listCart = (List<Card_Thu_cung>) SessionUtils.getInstance().getValue(request,
						"giohangs");
				Card_Thu_cung card_Thu_cung = new Card_Thu_cung(acount.getId(), dv.getId(), dv.getName(), dv.getAnh(),
						dv.getPrice(), 1);
				listCart.add(card_Thu_cung);
				// insert user
				card_Thu_CungImp.InsertCard(card_Thu_cung);
			} else {
				List<Card_Thu_cung> listCart = (List<Card_Thu_cung>) SessionUtils.getInstance().getValue(request,
						"giohangs");
				int soluongmoi = listCart.get(vitri).getCount() + 1;
				listCart.get(vitri).setCount(soluongmoi);
				// update count
				card_Thu_CungImp.UpdateCount(soluongmoi, acount.getId(), Integer.parseInt(id));

			}
		}
		List<Card_Thu_cung> listCart = (List<Card_Thu_cung>) SessionUtils.getInstance().getValue(request, "giohangs");
		PrintWriter out = response.getWriter();
		out.print(listCart.size());

	}

	private int kiemTraSanPhamDaTonTai(HttpServletRequest request, int id) {
		List<Card_Thu_cung> listCart = (List<Card_Thu_cung>) SessionUtils.getInstance().getValue(request, "giohangs");
		for (int i = 0; i < listCart.size(); i++) {
			if (listCart.get(i).getId() == id) {
				return i;
			}

		}

		return -1;

	}

}
