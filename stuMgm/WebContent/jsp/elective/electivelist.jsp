<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<html>
	<head>
		<t:head />
		<link rel="stylesheet" href="html/css/grade.css" type="text/css"></link>
	</head>
	<body>
	<t:menu />
		<div class="main-top">
				<span class="title">选修课程表</span>
		</div>	
				
		<div class="main-body">
		<table class="main-table" cellspacing="0" width="100%" border="1" align=center>
			<tr class="title">
				<td>
					课程号
				</td>
				<td>
					课程名
				</td>
				<td >
					任课老师
				</td>
				<td >
					学分
				</td>
			</tr>
			<c:forEach items="${electivelist}" var="elective">
				<tr>
					<td>
						${elective.id}
					</td>
					<td>
				 		<c:out value="${elective.name}"></c:out>
					</td>
					<td>
				 		<c:out value="${elective.teacherName}"></c:out>
					</td>
					<td>
				 		<c:out value="${elective.credit}"></c:out>
					</td>
				</tr>
			</c:forEach>

			<c:if test="${empty electivelist}">
				<tr bgcolor="#ffffff">
					<td height="22" align="center" colspan=11>
						没有课程，请添加课程！
					</td>
				</tr>
			</c:if>

		</table>
		</div>

		<t:foot />
	</body>
</html>