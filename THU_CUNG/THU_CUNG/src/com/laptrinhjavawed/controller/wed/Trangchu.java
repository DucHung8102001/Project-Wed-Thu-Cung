package com.laptrinhjavawed.controller.wed;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.laptrinhjavawed.imp.DAO.Card_Thu_CungImp;
import com.laptrinhjavawed.imp.DAO.LoaiCho_imp;
import com.laptrinhjavawed.imp.DAO.LoaiMeo_imp;
import com.laptrinhjavawed.model.Account;
import com.laptrinhjavawed.model.Card_Thu_cung;
import com.laptrinhjavawed.model.Loai_Dong_Vat;
import com.laptrinhjavawed.utils.SessionUtils;



@WebServlet(urlPatterns = { "/HomePage" })
public class Trangchu extends HttpServlet {
	private static final long serialVersionUID = 1L;
	LoaiCho_imp loaiCho_imp= new LoaiCho_imp();
	LoaiMeo_imp loaiMeo_imp = new LoaiMeo_imp();
	Card_Thu_CungImp card_Thu_CungImp=new Card_Thu_CungImp();
	public Trangchu() {
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	      //id computer=0
		List<Loai_Dong_Vat> listdog = loaiCho_imp.getAllLoaiCho();
		List<Loai_Dong_Vat> listcat = loaiMeo_imp.getAllLoaiMeo();
		String name = "";
		if ((Account) SessionUtils.getInstance().getValue(request, "ACCOUNT") != null) {
			SessionUtils.getInstance().removeValue(request, "giohangs");
			Account oneAccount = (Account) SessionUtils.getInstance().getValue(request, "ACCOUNT");
			
			name=oneAccount.getUser();
			List<Card_Thu_cung> listCard = card_Thu_CungImp.getAllCardById(String.valueOf(oneAccount.getId()));
	
			if (!listCard.isEmpty()) {
				SessionUtils.getInstance().putValue(request, "giohangs", listCard);
				List<Card_Thu_cung> listSize = (List<Card_Thu_cung>) SessionUtils.getInstance().getValue(request, "giohangs");
				request.setAttribute("listSize", listSize.size());
			}else {
				request.setAttribute("listSize", 0);
			}
			
		} 
		
		request.setAttribute("name", name);
		request.setAttribute("listdog", listdog);
		request.setAttribute("listcat", listcat);
		request.getRequestDispatcher("/view/HomePage.jsp").forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
