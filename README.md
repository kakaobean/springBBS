# springBBS
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "YB";
	String password = "YB";
	try {
		Class.forName(driver);
		System.out.println("jdbc driver 로딩 성공");
		DriverManager.getConnection(url, user, password);
		System.out.println("오라클 연결 성공");
	} catch (ClassNotFoundException e) {
		System.out.println("jdbc driver 로딩 실333333패");
	} catch (SQLException e) {
		System.out.println("오라클 연결 실패");
	}
	
	
