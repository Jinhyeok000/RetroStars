/**
 * 팀 별빛, Software License, Version 1.0
 *
 * Copyright (c) 팀 별빛, All rights reserved.
 */
package dao;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

/**
 * Description : 클래스에 대한 설명을 입력해주세요.
 * Date : 2024. 6. 14.
 * History :
 *  - 작성자 : Jin, 날짜 : 2024. 6. 12., 설명 : 최초작성
 *
 * @author : Jin 
 * @version 1.0 
 */
public class GBoardDAO {
	public static GBoardDAO instance;
	
	public synchronized static GBoardDAO getInstance() {
		if (instance == null) {
			instance = new GBoardDAO();
		}
		return instance;
	}
	
	public GBoardDAO() {
		
	}
	
	private Connection getConnection() throws Exception{
		Context ctx = new InitialContext();
		DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/oracle");
		return ds.getConnection();
	}
 
}
