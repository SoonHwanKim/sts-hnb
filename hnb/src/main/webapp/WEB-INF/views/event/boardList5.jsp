<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<LINK REL="stylesheet" type="text/css" href="${css}/board.css"/>

<script type="text/javascript">
	$(function() {
		boradList.load(context+"/event/boardList/1");
	});
	var boradList = {
			load : function() {
				$.getJSON(url, function(data) {
					var table = '<div id="boardList"><TABLE id="tab_top"><TR BGCOLOR=#A0A0A0><TD ALIGN=CENTER><FONT SIZE=4><B>회원목록</B>
					+'</FONT></TD></TR></TABLE><table id="member"><tr><td>회원수:${count}명</td></tr></table>'
					+'<TABLE id="tab_boardList"><TR ALIGN=CENTER><TD WIDTH=5%><B>번호</B></TD>'
					+'<TD WIDTH=10%><B>아이디</B></TD>'
					+'<TD WIDTH=20%><B>회원명</B></TD>'
					+'<TD WIDTH=40%><B>이메일</B></TD>'
					+'<TD WIDTH=25%><B>가입일</B></TD>'
					+'</TR><c:forEach var="member"items="${member}"varStatus="status">'
					+'<TR><TD WIDTH=5%ALIGN=CENTER>${status.index+1}</TD>'
					+'<TD WIDTH=10%ALIGN=CENTER>${member.id}</TD>'
					+'<TD WIDTH=20%ALIGN=CENTER><A HREF="BoardContent.jsp">'
					+'${member.name}</A></TD>'
					+'<TD WIDTH=40%ALIGN=CENTER>${member.email}</TD>'
					+'<TD WIDTH=25%ALIGN=CENTER>${member.regdate}</TD></TR></c:forEach></TABLE></div>';
					$(".mainView").empty();
					$(".mainView").html(table);
					
				});

			}
			
	}

</script>