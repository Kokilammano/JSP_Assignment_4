<%--Communicate to DB server and display data using JSTL Sql tags --%>

<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<sql:setDataSource
	var="ds"
	driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/students"
	user="root"
	password="kokilam"/>
	
<sql:query
	var="rs"
	dataSource="${ds}"
	sql="SELECT * FROM students"/>
	
<table border="2">
	<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Mobile</th>
	</tr>
	<c:forEach var="row" items="${rs.rows}">
		<tr>
			<td>${row.id}</td>
			<td>${row.name}</td>
			<td>${row.mobile}</td>
		</tr>
	</c:forEach>
</table>