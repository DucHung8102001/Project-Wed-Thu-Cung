package com.laptrinhjavawed.imp.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.laptrinhjavawed.DAO.IAccount;
import com.laptrinhjavawed.model.Account;
import com.laptrinhjavawed.model.Product;

public class AccountImp implements IAccount {
	// @Inject
	// private ConnectionSQL connect;
	public Connection getConnection() {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String url = "jdbc:sqlserver://DESKTOP-DDQ0LH1\\SQLEXPRESS:1433;databaseName=THU_CUNG";
			String user = "sa";
			String password = "0372820810Hung@#*";
			return DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException | SQLException e) {
		}
		return null;
	}

	public List<Account> getOneAccount(String user, String pass) {
		List<Account> list = new ArrayList<>();
		Account account = null;
		Connection con = getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		if (con != null) {
			try {
				String sql = "SELECT*FROM dbo.Account WHERE [user]=? AND pass=?";
				ps = con.prepareStatement(sql);
				ps.setString(1, user);
				ps.setString(2, pass);
				rs = ps.executeQuery();
				while (rs.next()) {
					account = new Account();
					account.setId(rs.getInt(1));
					account.setUsername(rs.getString(2));
					account.setUser(rs.getString(3));
					account.setPass(rs.getString(4));
					account.setIsAdmin(rs.getInt(6));
					list.add(account);
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
	public boolean CheckAcount(String user, String pass) {
		Connection con = getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		boolean check = false;
		String line="";
		if (con != null) {
			try {
				String sql ="select * from Customer where username = ? and passwords = ?";
				ps = con.prepareStatement(sql);
				ps.setString(1, user);
				ps.setString(2, pass);
				
				rs = ps.executeQuery();
				while (rs.next()) {
					line=rs.getString(1);
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
			if(line.isEmpty()) {
				check=false;
			}else {check=true;
		}}
		return check;
	}
	public static void main(String[] args) {
		System.out.println(new AccountImp().CheckSignin("qwe@gmail.com", "qwe"));
		
	}

	@Override
	public boolean CheckNewAccount(String user) {
		Connection con = getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		boolean check = false;
		String line="";
		if (con != null) {
			try {
				String sql ="select * from Customer where username = ? ";
				ps = con.prepareStatement(sql);
				ps.setString(1, user);
				
				
				rs = ps.executeQuery();
				while (rs.next()) {
					line=rs.getString(1);
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
			if(line.isEmpty()) {
				check=false;
			}else {check=true;
		}}
		return check;
	}

	@Override
	public boolean InsertAccount(String name, String user, String pass,int isAdmin) {
		
		Connection con = getConnection();
		PreparedStatement ps = null;
		if (con != null) {
			try {
				String sql = " INSERT INTO Customer VALUES (?, ?, ?, ?);";
				ps = con.prepareStatement(sql);
				ps.setString(1, name);
				ps.setString(2, user);
				ps.setString(3, pass);
				ps.setInt(4, isAdmin);
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
	public Account CheckSignin(String user, String pass) {
		Account pr =null;
		Connection con = getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		if (con != null) {
			try {
				String sql = "SELECT*FROM dbo.Customer WHERE username=? and passwords= ?";
				ps = con.prepareStatement(sql);
				ps.setString(1, user);
				ps.setString(2, pass);
				rs = ps.executeQuery();
				while (rs.next()) {
					pr = new Account();
					
					pr.setId(rs.getInt("id"));
					pr.setIsAdmin(rs.getInt("isadmin"));
					pr.setPass(rs.getString("passwords"));
					pr.setUser(rs.getString("Name"));
					pr.setUsername(rs.getString("username"));
				}
				return pr;
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
