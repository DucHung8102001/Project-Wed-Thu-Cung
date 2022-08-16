package com.laptrinhjavawed.model;

public class DongVat {
	int id;
	String name;
	double price;
	int giong;
	String goi_tinh;
	String tuoi;
	String dtchung;
	String bHSK;
	String mota;
	String anh;
	int id_cho;
	int id_meo; 
	public DongVat() {
		super();
	}
	public DongVat(int id, String name, double price, int giong, String goi_tinh, String tuoi, String dtchung,
			String bHSK, String mota, String anh, int id_cho, int id_meo) {
		
		this.id = id;
		this.name = name;
		this.price = price;
		this.giong = giong;
		this.goi_tinh = goi_tinh;
		this.tuoi = tuoi;
		this.dtchung = dtchung;
		this.bHSK = bHSK;
		this.mota = mota;
		this.anh = anh;
		this.id_cho = id_cho;
		this.id_meo = id_meo;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getGiong() {
		return giong;
	}
	public void setGiong(int giong) {
		this.giong = giong;
	}
	public String getGoi_tinh() {
		return goi_tinh;
	}
	public void setGoi_tinh(String goi_tinh) {
		this.goi_tinh = goi_tinh;
	}
	public String getTuoi() {
		return tuoi;
	}
	public void setTuoi(String tuoi) {
		this.tuoi = tuoi;
	}
	public String getDtchung() {
		return dtchung;
	}
	public void setDtchung(String dtchung) {
		this.dtchung = dtchung;
	}
	public String getbHSK() {
		return bHSK;
	}
	public void setbHSK(String bHSK) {
		this.bHSK = bHSK;
	}
	public String getMota() {
		return mota;
	}
	public void setMota(String mota) {
		this.mota = mota;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public int getId_cho() {
		return id_cho;
	}
	public void setId_cho(int id_cho) {
		this.id_cho = id_cho;
	}
	public int getId_meo() {
		return id_meo;
	}
	public void setId_meo(int id_meo) {
		this.id_meo = id_meo;
	}
	@Override
	public String toString() {
		return "DongVat [id=" + id + ", name=" + name + ", price=" + price + ", giong=" + giong + ", goi_tinh="
				+ goi_tinh + ", tuoi=" + tuoi + ", dtchung=" + dtchung + ", bHSK=" + bHSK + ", mota=" + mota + ", anh="
				+ anh + ", id_cho=" + id_cho + ", id_meo=" + id_meo + "]";
	}
}