package com.laptrinhjavawed.model;

public class Loai_Dong_Vat {
	int id;
	String Name;
	String anh;
	public Loai_Dong_Vat(int id, String name, String anh) {
		
		this.id = id;
		Name = name;
		this.anh = anh;
	}
	public Loai_Dong_Vat() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	@Override
	public String toString() {
		return "Loai_Dong_Vat [id=" + id + ", Name=" + Name + ", anh=" + anh + "]";
	}
	
}
