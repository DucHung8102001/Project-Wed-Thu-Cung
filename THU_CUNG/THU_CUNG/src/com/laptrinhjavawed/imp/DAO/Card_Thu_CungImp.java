package com.laptrinhjavawed.imp.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.laptrinhjavawed.DAO.IAccount;
import com.laptrinhjavawed.DAO.ICard;
import com.laptrinhjavawed.DAO.ICard_Thu_Cung;
import com.laptrinhjavawed.model.Account;
import com.laptrinhjavawed.model.Card;
import com.laptrinhjavawed.model.Card_Thu_cung;

public class Card_Thu_CungImp implements ICard_Thu_Cung {
	// @Inject
	// private ConnectionSQL connect;
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
	public boolean InsertCard(Card_Thu_cung card) {
		Connection con = getConnection();
		PreparedStatement ps = null;
		if (con != null) {
			try {
				String sql = "INSERT INTO dbo.Card VALUES (?,?,?,?,?,?)";
				ps = con.prepareStatement(sql);
				ps.setInt(1, card.getIdAccount());
				ps.setInt(2, card.getId());
				ps.setString(3, card.getName());
				ps.setString(4, card.getImage());
				ps.setDouble(5, card.getPrice());
				ps.setInt(6, card.getCount());
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
	public static void main(String[] args) {
		
		System.out.println(new Card_Thu_CungImp().UpdateCount(5, 1, 6));
	}

	@Override
	public List<Card_Thu_cung> getAllCardById(String id) {
		List<Card_Thu_cung> list = new ArrayList<>();
		Card_Thu_cung card = null;
		Connection con = getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		if (con != null) {
			try {
				String sql = "SELECT*FROM Card WHERE id_customer=?";
				ps = con.prepareStatement(sql);
				ps.setInt(1, Integer.parseInt(id));
				rs = ps.executeQuery();
				while (rs.next()) {
					card = new Card_Thu_cung();
					card.setIdCart(rs.getInt("id"));
					card.setIdAccount(rs.getInt("id_customer"));
					card.setId(rs.getInt("id_dongvat"));
					card.setName(rs.getString("Name"));
					card.setImage(rs.getString("image"));
					card.setPrice(rs.getDouble("gia_tien"));
					card.setCount(rs.getInt("count"));
					list.add(card);
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
	public boolean UpdateCount(int soluongmoi, int id_customer, int id_dv) {
		Connection con = getConnection();
		PreparedStatement ps = null;
		if (con != null) {
			try {
				String sql = "UPDATE Card SET count =? WHERE id_customer = ? and id_dongvat=?";
				ps = con.prepareStatement(sql);
				ps.setInt(1,soluongmoi);
				ps.setInt(2, id_customer);
				ps.setInt(3, id_dv);
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
	@Override
	public boolean DeleteCardByIdProduct(int idAccount, int idProduct) {
		Connection con = getConnection();
		PreparedStatement ps = null;
		if (con != null) {
			try {
				String sql = "DELETE FROM dbo.Card WHERE id_customer=? AND  id_dongvat=?";
				ps = con.prepareStatement(sql);
				ps.setInt(1, idAccount);
				ps.setInt(2, idProduct);
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
	@Override
	public void DeleteCard(int idAccount) {
		Connection con = getConnection();
		PreparedStatement ps = null;
		if (con != null) {
			try {
				String sql = "DELETE FROM dbo.Card WHERE id_customer=? ";
				ps = con.prepareStatement(sql);
				ps.setInt(1, idAccount);
				ps.executeUpdate();
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

	}




}
