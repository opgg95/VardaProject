<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>  
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%  
String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/jspbookdb";
String username = "root";
String password = "1234";
Connection conn=null;
//1.드라이버 로딩
try{
Class.forName("com.mysql.cj.jdbc.Driver");
//2. 연결객체 맺기
 conn = DriverManager.getConnection(url, username, password);
// 연결 객체(conn)를 사용하여 작업 수행
// ...
// 작업 완료 후 연결 객체 닫기
//conn.close();
}catch(Exception e){
out.print("데이타베이스 연결이 실패했습니다.<br>");
out.print("SQLException: "+e.getMessage());
}
%>

</body>
</html>