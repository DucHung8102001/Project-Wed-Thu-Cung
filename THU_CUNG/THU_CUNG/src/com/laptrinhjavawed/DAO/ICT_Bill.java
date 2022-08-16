package com.laptrinhjavawed.DAO;

import java.util.List;

import com.laptrinhjavawed.model.CT_Bill;

public interface ICT_Bill {
	boolean insert_CT_Bill(CT_Bill ctBill);

	List<CT_Bill> getAllCTBillById(int id);

}
