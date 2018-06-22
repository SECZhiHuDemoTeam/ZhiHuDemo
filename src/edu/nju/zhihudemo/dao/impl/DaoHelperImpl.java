package edu.nju.zhihudemo.dao.impl;

import java.sql.*;

import edu.nju.zhihudemo.dao.DaoHelper;


public class DaoHelperImpl implements DaoHelper {
	private static DaoHelperImpl baseDao=new DaoHelperImpl();

	private Connection connection = null;
	
	private DaoHelperImpl() {
		String driver = "com.mysql.cj.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/zhihudemo?serverTimezone=GMT%2b8&characterEncoding=utf8&useUnicode=true&useSSL=false&autoReconnect=true";
		String username = "root";
		String password = "";
		try {
			Class.forName(driver); //classLoader,加载对应驱动
			connection = DriverManager.getConnection(url, username, password);

			DatabaseMetaData meta = connection.getMetaData();
			String type [] = {"TABLE"};
			ResultSet result = meta.getTables(null, null, "people", type);
			if(!result.next()){//如果表不存在，则创建表
				createTables();
			}
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static DaoHelperImpl getBaseDaoInstance()
	{
		return baseDao;
	}
	
	public Connection getConnection()
	{
		return connection;
	}
	
	/*
	 * Connection
	 */
	public void closeConnection(Connection con) {
		if(con!=null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	/*
	 * PreparedStatement
	 */
	public void closePreparedStatement(PreparedStatement stmt) {
		if(stmt!=null) {
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	/*
	 * ResultSet
	 */	
	public void closeResult(ResultSet result) {
		if(result!=null) {
			try {
				result.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * 创建表
	 */
	private void createTables() {
		PreparedStatement stmt = null;
		try {
			String sql = "CREATE TABLE people (id varchar(255), name varchar(255), sex varchar(255), introduction varchar(255), PRIMARY KEY ( id )) DEFAULT CHARSET=utf8;";

			stmt = connection.prepareStatement(sql);
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			System.out.println("建表失败 " + e.getMessage());
		} finally {
//			closeConnection(connection);
			closePreparedStatement(stmt);
		}
	}
}
