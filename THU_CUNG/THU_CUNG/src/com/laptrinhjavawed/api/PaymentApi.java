package com.laptrinhjavawed.api;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.laptrinhjavawed.imp.DAO.BillImp;
import com.laptrinhjavawed.imp.DAO.CT_BillImp;
import com.laptrinhjavawed.imp.DAO.Card_Thu_CungImp;
import com.laptrinhjavawed.model.Account;
import com.laptrinhjavawed.model.Bill;
import com.laptrinhjavawed.model.CT_Bill;
import com.laptrinhjavawed.model.Card;
import com.laptrinhjavawed.model.Card_Thu_cung;
import com.laptrinhjavawed.utils.SessionUtils;

/**
 * Servlet implementation class PaymentApi
 */
@WebServlet("/api-payment")
public class PaymentApi extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BillImp billImp = new BillImp();
	CT_BillImp ct_BillImp = new CT_BillImp();
	Card_Thu_CungImp card_Thu_CungImp = new Card_Thu_CungImp();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PaymentApi() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		String note = request.getParameter("note");
		String user = request.getParameter("user");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String tongtien = request.getParameter("tongtien");
		Account acount = (Account) SessionUtils.getInstance().getValue(request, "ACCOUNT");
		List<Card_Thu_cung> listCart = (List<Card_Thu_cung>) SessionUtils.getInstance().getValue(request, "giohangs");
		Bill new_bill = null;
		// trang thai cua hang(ch giao)
		int idStatus = 1;

		if (!listCart.isEmpty()) {
			if (acount != null) {
				new_bill = new Bill(acount.getId(), user, phone, tongtien, listCart.size(), address, note, idStatus);
			}
			int idBill = billImp.insertBill(new_bill);
			for (Card_Thu_cung card : listCart) {
				CT_Bill ct_Bill = new CT_Bill(idBill, card.getId(), card.getName(), card.getImage(),
						String.valueOf(card.getPrice()), card.getCount());
				ct_BillImp.insert_CT_Bill(ct_Bill);

			}
			SessionUtils.getInstance().removeValue(request, "giohangs");

			card_Thu_CungImp.DeleteCard(acount.getId());

		}

	}

}
