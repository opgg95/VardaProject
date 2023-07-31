<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.Enumeration"%>
<!--<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="dto.Product"%>
<%@page import="dao.ProductRepository"%>-->
<%@ page contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>    
<%@ include file="dbconn.jsp" %><!-- DBMS 연결 -->
<%
// 현재 페이지에 맞는 문자셋으로 설정
request.setCharacterEncoding("utf-8");

String filename = "";
String realFolder = "c:\\products";
int maxSize = 5*1024*1024;
String encType = "utf-8";

// MultipartRequest 생성 시에는 try-catch 구문으로 에러 처리가 필요합니다.	
/* try {
    MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

    String pdItem = multi.getParameter("PdItem");//상품코드
    String pdName = multi.getParameter("pdName");//상품명
    Integer pdPrice = Integer.parseInt(multi.getParameter("pdPrice")); // 가격
    String pdTag = multi.getParameter("pdTag"); // 상품 태그

    // Upload 파일 정보 얻기
    Enumeration files = multi.getFileNames();
    String fname = (String) files.nextElement();
    String fileName = multi.getFilesystemName(fname);

    // PreparedStatemnet 객체 생성
    String sql = "INSERT INTO products (pdItem, pdName, pdPrice, pdTag) VALUES (?, ?, ?, ?, ?)";
    PreparedStatement pstmt = conn.prepareStatement(sql);

    Product newProduct = new Product();
    // Setter 메소드로 객체에 속성값 설정
    newProduct.setPdItem(pdItem);
    newProduct.setPdName(pdName);
    newProduct.setPdPrice(pdPrice);
    newProduct.setPdTag(pdTag);
    newProduct.setPdImg(filename);
    

    int cnt = 0;
    //Getter 메소드로 객체의 속성값 가져와서 pstmt 값 설정하기
    pstmt.setString(++cnt, newProduct.getPdItem());
    pstmt.setString(++cnt, newProduct.getPdName());
    pstmt.setInt(++cnt, newProduct.getPdPrice());
    pstmt.setString(++cnt, newProduct.getPdTag());
    pstmt.setString(++cnt,newProduct.getPdImg());

    // SQL 문 전달
    pstmt.executeUpdate();
    if (pstmt != null) pstmt.close();
    if (conn != null) conn.close();

    // 상품 등록 작업 완료 후 상품 목록으로 이동
    response.sendRedirect("products.jsp");
} catch (Exception e) {
    e.printStackTrace();
    // 예외 처리를 원하는 대로 진행하시면 됩니다.
} */
%>