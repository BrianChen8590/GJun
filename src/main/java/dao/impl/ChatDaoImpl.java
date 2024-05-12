package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.ChatDao;
import dao.DbConnection;
import model.Chat;

public class ChatDaoImpl implements ChatDao {

	public static void main(String[] args) {
		System.out.println(new ChatDaoImpl().queryAll());
	}

	@Override
	public void add(Chat c) {
		String SQL = "insert into Chat(name,subject,content) values(?,?,?)";
		Connection conn = DbConnection.getDb();

		try {
			PreparedStatement ps = conn.prepareStatement(SQL);
			ps.setString(1, c.getName());
			ps.setString(2, c.getSubject());
			ps.setString(3, c.getContent());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Override
	public List<Chat> queryAll() {
		String SQL = "select * from chat order by id desc";
		List<Chat> l = new ArrayList();
		Connection conn = DbConnection.getDb();
		try {
			PreparedStatement ps = conn.prepareStatement(SQL);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Chat c = new Chat();
				c.setId(rs.getInt("id"));
				c.setName(rs.getString("name"));
				c.setSubject(rs.getString("subject"));
				c.setContent(rs.getString("content"));
				l.add(c);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return l;
	}

}