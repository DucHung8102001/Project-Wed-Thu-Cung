package com.laptrinhjavawed.DAO;

import java.util.List;

import com.laptrinhjavawed.model.Bill;

public interface IBill {
	int insertBill(Bill bill);

	List<Bill> getAllByStatusID(String statusID);

	boolean DeleteBillById(int id);
	
	boolean updateBillById(int idBill,int idStatus );

}
