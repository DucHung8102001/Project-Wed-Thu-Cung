package com.laptrinhjavawed.DAO;

import java.util.List;

import com.laptrinhjavawed.model.Card_Thu_cung;

public interface ICard_Thu_Cung {

	boolean InsertCard(Card_Thu_cung card);
	List<Card_Thu_cung> getAllCardById(String id);
	boolean UpdateCount(int soluongmoi,int id_customer,int id_dv);
	boolean DeleteCardByIdProduct(int idAccount, int idProduct);
	void DeleteCard(int idAccount);
}
