package com.laptrinhjavawed.DAO;

import java.util.List;

import com.laptrinhjavawed.model.Category;
import com.laptrinhjavawed.model.Loai_Dong_Vat;

public interface ILoai_Cho {
	 List<Loai_Dong_Vat> getAllLoaiCho() ;
	 String typeNameDog(int id);
}
