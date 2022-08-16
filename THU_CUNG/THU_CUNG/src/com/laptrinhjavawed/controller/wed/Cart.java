package com.laptrinhjavawed.controller.wed;

import java.util.ArrayList;
import java.util.List;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.laptrinhjavawed.imp.DAO.Card_Thu_CungImp;
import com.laptrinhjavawed.imp.DAO.DongVat_imp;
import com.laptrinhjavawed.imp.DAO.LoaiCho_imp;
import com.laptrinhjavawed.imp.DAO.LoaiMeo_imp;
import com.laptrinhjavawed.model.Account;
import com.laptrinhjavawed.model.Card_Thu_cung;
import com.laptrinhjavawed.model.DongVat;
import com.laptrinhjavawed.model.Loai_Dong_Vat;
import com.laptrinhjavawed.utils.SessionUtils;

@WebServlet(urlPatterns = { "/Cart" })
public class Cart extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Card_Thu_CungImp card_Thu_CungImp=new Card_Thu_CungImp();

	public Cart() {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Account account=(Account) SessionUtils.getInstance().getValue(request, "ACCOUNT") ;
		if (account!= null) {
			List<Card_Thu_cung> listSize = (List<Card_Thu_cung>) SessionUtils.getInstance().getValue(request,"giohangs");
			if( SessionUtils.getInstance().getValue(request,"giohangs")!=null) {
				request.setAttribute("listSize", listSize.size());
			}else {	
				request.setAttribute("listSize", 0);
			}
			if( SessionUtils.getInstance().getValue(request,"ACCOUNT")!=null) {
				request.setAttribute("name", account.getUser());
			}
			
		List<Card_Thu_cung> list=card_Thu_CungImp.getAllCardById(String.valueOf(account.getId()));
		request.setAttribute("list", list);
		
			
		}

		

		request.getRequestDispatcher("/view/GioHang.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
