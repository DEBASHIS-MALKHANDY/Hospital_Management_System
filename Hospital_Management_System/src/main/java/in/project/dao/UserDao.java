package in.project.dao;

import java.sql.Connection;



import java.sql.PreparedStatement;
import java.sql.ResultSet;

import in.project.entity.User;

public class UserDao {
	private Connection conect;

	public UserDao(Connection conect) {
		super();
		this.conect = conect;
	}
	public boolean register(User u) {
		boolean f = false;

		try {
			String sql = "insert into user(Full_Name,Email,Password) values(?,?,?) ";

			PreparedStatement ps = conect.prepareStatement(sql);
			ps.setString(1, u.getFullName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());

			int i = ps.executeUpdate();

			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}
	
	public User login(String em, String psw) {
		User u = null;

		try {
			String sql = "select * from user where Email=? and Password=?";
			PreparedStatement ps = conect.prepareStatement(sql);
			ps.setString(1, em);
			ps.setString(2, psw);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				u = new User();
				u.setId(rs.getInt(1));
				u.setFullName(rs.getString(2));
				u.setEmail(rs.getString(3));
				u.setPassword(rs.getString(4));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return u;
	}
	
	public boolean checkOldPassword(int userid, String oldPassword) {
		boolean f = false;

		try {
			String sql = "select * from user where id=? and password=?";
			PreparedStatement ps = conect.prepareStatement(sql);
			ps.setInt(1, userid);
			ps.setString(2, oldPassword);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}
	
	public boolean changePassword(int userid, String newPassword) {
		boolean f = false;

		try {
			String sql = "update user set password=? where id=?";
			PreparedStatement ps = conect.prepareStatement(sql);
			ps.setString(1, newPassword);
			ps.setInt(2, userid);

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}


}