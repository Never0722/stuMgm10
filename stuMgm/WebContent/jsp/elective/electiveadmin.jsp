<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<html>
	<head>
		<t:head />
		<script language="javascript" src="html/js/manageElective.js"></script>
		<link rel="stylesheet" href="html/css/elective.css" type="text/css"></link>
	</head>
	<body>
		<t:menu />
		<div class="main-top">
			<span class="title">选修课程管理</span>
		</div>

		<div class="main-body">
			<form name="electiveForm" method="POST">
				<table class="main-table" cellspacing="0" width="100%" border="1"
					align="center">
					<tr class="title">
						<td>
							&nbsp;
						</td>
						<td>
							课程号
						</td>
						<td class="name">
							课程名称
						</td>
						<td>
							任课老师
						</td>
						<td>
							学分
						</td>
					</tr>
					<c:forEach items="${electivelist}" var="elective">
						<tr>
							<td>
								<input type=checkbox id="${elective.id}"
									value="${elective.id}">
							</td>
							<td>
								${elective.id}
							</td>
							<td>
								<c:out value="${elective.name}"></c:out>
							</td>
							<td class="num">
								<c:out value="${elective.teacherName}" default="0" />
							</td>
							<td class="num">
								<c:out value="${elective.credit}" default="0"></c:out>
							</td>
						</tr>
					</c:forEach>
					<c:if test="${empty electivelist}">
						<tr bgcolor="#ffffff">
							<td colspan=12>
								没有选修课程，请返回
								<a class="a2" href="studentAdmin.do?rnd=<%=Math.random()%>">学生基本信息管理</a>先添加成绩!
							</td>
						</tr>
					</c:if>

					<tr>
						<td colspan="12" class="ctrl-button">
							<input type=hidden name="electiveids" value="">
							<input type="hidden" name="from" value="electiveadmin">
							<input type=button name="allcheck" value="全选"
								onclick=javascript:checkall(electiveForm);>
							<input type=button name="allnotcheck" value="全不选"
								onclick=javascript:uncheckall(electiveForm);>
							<input type=button name="delete" value="删除"
								onclick=javascript:deleteelective(electiveForm);>
							<input type=button name="addelective" value="修改选修课程信息"
								onclick=javascript:modifyelective(electiveForm);>
							
						</td>
					</tr>

				</table>
			</form>
		</div>

		<t:foot />
	</body>
</html>