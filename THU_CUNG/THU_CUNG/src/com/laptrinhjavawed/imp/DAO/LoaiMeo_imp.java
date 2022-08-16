package com.laptrinhjavawed.imp.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.laptrinhjavawed.DAO.ICategory;
import com.laptrinhjavawed.DAO.ILoai_Meo;
import com.laptrinhjavawed.model.Category;
import com.laptrinhjavawed.model.Loai_Dong_Vat;

public class LoaiMeo_imp implements ILoai_Meo {
	public Connection getConnection() {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String url = "jdbc:sqlserver://DESKTOP-DDQ0LH1\\SQLEXPRESS:1433;databaseName=THU_CUNG;integratedSecurity=true";
			String user = "sa";
			String password = "0372820810Hung@#*";
			return DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException | SQLException e) {
		}
		return null;
	}

	@Override
	public List<Loai_Dong_Vat> getAllLoaiMeo() {
		List<Loai_Dong_Vat> list = new ArrayList<>();
		Connection con = getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		if (con != null) {
			try {
				String sql = " SELECT *FROM Loai_Meo ";
				ps = con.prepareStatement(sql);
				
				rs = ps.executeQuery();
				while (rs.next()) {
					Loai_Dong_Vat cate = new Loai_Dong_Vat();
					cate.setId(rs.getInt("id"));
					cate.setName(rs.getString("name"));
					cate.setAnh(rs.getString("image"));
					list.add(cate);
				}
				return list;
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (rs != null) {
						rs.close();
					}
					if (ps != null) {
						ps.close();
					}
					if (con != null) { 
						con.close();
					}
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}
		}
		return null;
	}

	public static void main(String[] args) {
		LoaiMeo_imp t = new LoaiMeo_imp();
		System.out.println(t.getAllLoaiMeo());
	}

	@Override
	public String typeNameCat(int id) {
		Connection con = getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String name = "";
		if (con != null) {
			try {
				String sql = "select *from Loai_Meo Where id= ?";
				ps = con.prepareStatement(sql);
				ps.setInt(1, id);
				rs = ps.executeQuery();
				while (rs.next()) {

					name = rs.getString("name");

				}
				return name;
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (rs != null) {
						rs.close();
					}
					if (ps != null) {
						ps.close();
					}
					if (con != null) {
						con.close();
					}
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}
		} // TODO Auto-generated method stub
		return null;
	}

}
