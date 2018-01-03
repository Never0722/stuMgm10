<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<html>
	<head>
		<t:head />
		<script language="javascript" src="html/js/manageGrade.js"></script>
		<link rel="stylesheet" href="html/css/grade.css" type="text/css"></link>
	</head>
	<body>
		<t:menu />
		<div class="main-top">
			<span class="title">修改选修课程信息</span>
		</div>

		<div class="main-body">
			<form name="form" method="POST" action="addElective.do"
				onsubmit="return checkForm();">
				<input type="hidden" name="stuid" value="${elective.id}">
				<%-- <input type="hidden" name="grade.id" value="${student.grade.id}"> --%>
				<input type="hidden" name="flag" value="update">

				<table class="main-table" align="center" cellpadding="0"
					cellspacing="0">
					<tr>
						<td class="first">
							课程号：
						</td>
						<td>
							<input type="text" name="stuid" maxlength="20" size="30"
								value="${elective.id }" class="bbsInput_short" >
						</td>
					</tr>
					
					
					<tr>
						<td class="first">
							课程名称：
						</td>
						<td>
							<input type="text" name="elective.name" maxlength="20"
								size="30" value="${elective.name}"
								class="bbsInput_short">
						</td>
					</tr>

					<tr>
						<td class="first">
							任课老师：
						</td>
						<td>
							<input type="text" name="elective.teacherName" maxlength="20"
								size="30" value="${elective.teacherName}"
								class="bbsInput_short">
						</td>
					</tr>
					<tr>
						<td class="first">
							学分：
						</td>
						<td>
							<input type="text" name="elective.credit" maxlength="20"
								size="30" value="${elective.credit}"
								class="bbsInput_short">
						</td>
					</tr>
					
					<tr>
						<td height="22" colspan="4">
							<div align="center">
								<input type="submit" value="保 存" class="bbsbutton">
								&nbsp;&nbsp;
								<input type="reset" value="清 除" class="bbsbutton">
								&nbsp;&nbsp;
								<input type="reset" value="返 回" onclick="history.back(-1);"
									class="bbsbutton">
							</div>
						</td>


					</tr>
					<tr>
						<td colspan="2" class="note">
							<span class="title">注 意 事 项 ：</span>
							<br />
							请仔细核对学生的成绩，确认所输入的信息是正确的，如果本次输入错了，保存成功后，还可以继续修改。
						</td>
					</tr>

				</table>
				<input type="hidden" name="from" value="${from}" />
			</form>
		</div>

		<t:foot />
	</body>
</html>
