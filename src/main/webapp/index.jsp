﻿<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="" method="post">
	<table border=1 width=500>
		<tr>
			<td>이름</td><td><input type="text" name="name"></td>
			<td>비밀번호</td><td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td colspan=4><textarea name="message" cols=60 rows=5></textarea></td>
		</tr>
		<tr>
			<td colspan=4 align=right><input type="submit" VALUE=" 확인 "></td>
		</tr>
	</table>
	</form>
	<br>
	<table width=510 border=1>
		<tr>
			<td>[<%vo.getNO(); %>]</td>
			<td>안대혁</td>
			<td>2013-01-15</td>
			<td><a href="deleteform.jsp?no=">삭제</a></td>
		</tr>
		<tr>
			<td colspan=4>안녕하세요</td>
		</tr>
	</table>
</body>
</html>