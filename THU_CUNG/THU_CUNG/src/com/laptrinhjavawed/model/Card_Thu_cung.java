package com.laptrinhjavawed.model;

public class Card_Thu_cung {

	int idCart, idAccount, id;
	String name, image;
	double price;
	int count;
	public Card_Thu_cung(int idCart, int idAccount, int id, String name, String image, double price, int count) {
		super();
		this.idCart = idCart;
		this.idAccount = idAccount;
		this.id = id;
		this.name = name;
		this.image = image;
		this.price = price;
		this.count = count;
	}
	public Card_Thu_cung() {
		super();
	}
	public int getIdCart() {
		return idCart;
	}
	public void setIdCart(int idCart) {
		this.idCart = idCart;
	}
	public int getIdAccount() {
		return idAccount;
	}
	public void setIdAccount(int idAccount) {
		this.idAccount = idAccount;
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
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	@Override
	public String toString() {
		return "Card_Thu_cung [idCart=" + idCart + ", idAccount=" + idAccount + ", id=" + id + ", name=" + name
				+ ", image=" + image + ", price=" + price + ", count=" + count + "]";
	}
	public Card_Thu_cung(int idAccount, int id, String name, String image, double price, int count) {
		super();
		this.idAccount = idAccount;
		this.id = id;
		this.name = name;
		this.image = image;
		this.price = price;
		this.count = count;
	}
	
}
