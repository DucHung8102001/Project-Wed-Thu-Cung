package com.laptrinhjavawed.imp.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.laptrinhjavawed.DAO.ICategory;
import com.laptrinhjavawed.DAO.IDongvat;
import com.laptrinhjavawed.DAO.ILoai_Cho;
import com.laptrinhjavawed.model.Category;
import com.laptrinhjavawed.model.DongVat;
import com.laptrinhjavawed.model.Loai_Dong_Vat;
import com.laptrinhjavawed.model.Product;

public class DongVat_imp implements IDongvat {
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
	public List<DongVat> getAllDongVatbyID(String id) {
		List<DongVat> list = new ArrayList<>();
		Connection con = getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		if (con != null) {
			try {
				String sql = " SELECT *FROM Dong_Vat where Giong=? ";
				ps = con.prepareStatement(sql);
				ps.setInt(1, Integer.parseInt(id));
				rs = ps.executeQuery();
				while (rs.next()) {
					DongVat cate = new DongVat();
					cate.setId(rs.getInt("id"));
					cate.setName(rs.getString("Name"));
					cate.setPrice(rs.getDouble("gia_tien"));
					cate.setGiong(rs.getInt("Giong"));
					cate.setGoi_tinh(rs.getString("gioi_tinh"));
					cate.setTuoi(rs.getString("Tuoi"));
					cate.setDtchung(rs.getString("Da_tiem_chung"));
					cate.setbHSK(rs.getString("Bao_Hanh_Suc_Khoe"));
					cate.setMota(rs.getString("Mo_ta_them"));
					cate.setAnh(rs.getString("anh"));
					cate.setId_cho(rs.getInt("id_cho"));
					cate.setId_meo(rs.getInt("id_meo"));
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

	@Override
	public List<DongVat> getAllDongVat(int id) {
		List<DongVat> list = new ArrayList<>();
		Connection con = getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		if (con != null) {
			try {
				String sql = " SELECT *FROM Dong_Vat where id_cho=? ";
				ps = con.prepareStatement(sql);
				ps.setInt(1, id);
				rs = ps.executeQuery();
				while (rs.next()) {
					DongVat cate = new DongVat();
					cate.setId(rs.getInt("id"));
					cate.setName(rs.getString("Name"));
					cate.setPrice(rs.getDouble("gia_tien"));
					cate.setGiong(rs.getInt("Giong"));
					cate.setGoi_tinh(rs.getString("gioi_tinh"));
					cate.setTuoi(rs.getString("Tuoi"));
					cate.setDtchung(rs.getString("Da_tiem_chung"));
					cate.setbHSK(rs.getString("Bao_Hanh_Suc_Khoe"));
					cate.setMota(rs.getString("Mo_ta_them"));
					cate.setAnh(rs.getString("anh"));
					cate.setId_cho(rs.getInt("id_cho"));
					cate.setId_meo(rs.getInt("id_meo"));
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
		DongVat_imp t = new DongVat_imp();
		System.out.println(t.getDongVatById(4));

	}

	@Override
	public List<DongVat> getAllDongVatProduct(int giong, int cho, int meo) {
		List<DongVat> list = new ArrayList<>();
		Connection con = getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		if (con != null) {
			try {
				String sql = " select*from Dong_Vat where Giong=? and id_cho=? and id_meo=? ";
				ps = con.prepareStatement(sql);
				ps.setInt(1, giong);
				ps.setInt(2, cho);
				ps.setInt(3, meo);
				rs = ps.executeQuery();
				while (rs.next()) {
					DongVat cate = new DongVat();
					cate.setId(rs.getInt("id"));
					cate.setName(rs.getString("Name"));
					cate.setPrice(rs.getDouble("gia_tien"));
					cate.setGiong(rs.getInt("Giong"));
					cate.setGoi_tinh(rs.getString("gioi_tinh"));
					cate.setTuoi(rs.getString("Tuoi"));
					cate.setDtchung(rs.getString("Da_tiem_chung"));
					cate.setbHSK(rs.getString("Bao_Hanh_Suc_Khoe"));
					cate.setMota(rs.getString("Mo_ta_them"));
					cate.setAnh(rs.getString("anh"));
					cate.setId_cho(rs.getInt("id_cho"));
					cate.setId_meo(rs.getInt("id_meo"));
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

	@Override
	public DongVat getDongVatById(int id) {
		DongVat cate = new DongVat();
		Connection con = getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		if (con != null) {
			try {
				String sql = "select*from Dong_Vat where id=?";
				ps = con.prepareStatement(sql);
				ps.setInt(1, id);
				rs = ps.executeQuery();
				while (rs.next()) {

					cate.setId(rs.getInt("id"));
					cate.setName(rs.getString("Name"));
					cate.setPrice(rs.getDouble("gia_tien"));
					cate.setGiong(rs.getInt("Giong"));
					cate.setGoi_tinh(rs.getString("gioi_tinh"));
					cate.setTuoi(rs.getString("Tuoi"));
					cate.setDtchung(rs.getString("Da_tiem_chung"));
					cate.setbHSK(rs.getString("Bao_Hanh_Suc_Khoe"));
					cate.setMota(rs.getString("Mo_ta_them"));
					cate.setAnh(rs.getString("anh"));
					cate.setId_cho(rs.getInt("id_cho"));
					cate.setId_meo(rs.getInt("id_meo"));
				}
				return cate;
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

	@Override
	public boolean insertDV(DongVat dv) {
		Connection con = getConnection();
		PreparedStatement ps = null;
		if (con != null) {
			try {
				String sql = "insert into Dong_Vat values(?,?,?,?,?,?,?,?,?,?,?)";
				ps = con.prepareStatement(sql);
				ps.setString(1, dv.getName());
				ps.setDouble(2, dv.getPrice());
				ps.setInt(3, dv.getGiong());
				ps.setString(4, dv.getGoi_tinh());
				ps.setString(5, dv.getTuoi());
				ps.setString(6, dv.getDtchung());
				ps.setString(7, dv.getbHSK());
				ps.setString(8, dv.getMota());
				ps.setString(9, dv.getAnh());
				ps.setInt(10, dv.getId_cho());
				ps.setInt(11, dv.getId_meo());

				if (ps.executeUpdate() > 0) {
					return true;
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
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
		return false;
	}
}
