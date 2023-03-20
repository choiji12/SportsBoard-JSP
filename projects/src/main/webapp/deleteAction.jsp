<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bbs.BbsDAO" %> 
<%@ page import="bbs.Bbs" %> 
<%@ page import="java.io.PrintWriter" %> <!-- 자바스크립트문을 작성하기 위해 사용 -->
<% request.setCharacterEncoding("UTF-8"); %> <!-- 모든 데이터를 UTF-8로 받음 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판!!</title>
</head>
<body>

	
	<%

	String userID = null;
	if(session.getAttribute("userID") != null){
		
		userID = (String) session.getAttribute("userID");
		
	}
	if(userID == null){
		
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인을 하세요')");
		script.println("location.href ='login.jsp'");
		script.println("</script>");					}
	
	/*  */
	int bbsID = 0;
	if(request.getParameter("bbsID") != null) {
		bbsID = Integer.parseInt(request.getParameter("bbsID"));
	}
	if(bbsID == 0) {
		out.println("<script>");
		out.println("alert('유효하지 않은 글입니다.')");
		out.println("location.href = 'bbs.jsp'");
		out.println("</script>");
	}
	Bbs bbs = new BbsDAO().getBbs(bbsID);
	if(!userID.equals(bbs.getUserID())) {
		out.println("<script>");
		out.println("alert('권한이 없습니다.')");
		out.println("location.href = 'bbs.jsp'");
		out.println("</script>");}
	
	
	else { /*  */
		
			BbsDAO bbsDAO = new BbsDAO();
			int result = bbsDAO.delete(bbsID);
			if(result == -1) {
				out.println("<script>");
				out.println("alert('글 삭제에 실패했습니다.');");
				out.println("history.back()");
				out.println("</script>");
			} else {	
				out.println("<script>");
				out.println("location.href = 'bbs.jsp'");
				out.println("</script>");
				}
					}
		
		
	
		
	%>
</body>
</html>