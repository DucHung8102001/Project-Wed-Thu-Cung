package com.laptrinhjavawed.DAO;

import java.util.List;

import com.laptrinhjavawed.model.Account;
import com.laptrinhjavawed.model.Category;
import com.laptrinhjavawed.model.DongVat;
import com.laptrinhjavawed.model.Status;

public interface IDongvat {
	List<DongVat> getAllDongVatbyID(String id);
	List<DongVat> getAllDongVatProduct(int giong,int cho,int meo);
	DongVat getDongVatById(int id);
	List<DongVat> getAllDongVat(int id);
	boolean  insertDV(DongVat dv);
}

