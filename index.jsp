<%--JSTL Core Elements --%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%--c:out tag --%>
The numbers are....
<c:out value="${param.num1}"/>
<c:out value="${param.num2}"/>
<br>

<%--c:set tag --%>
<c:set var="num1" value="${param.num1}"/>
<c:set var="num2" value="${param.num2}"/>

<c:set var="add" value="${num1+num2}"/>
<c:set var="sub" value="${num1-num2}"/>
<c:set var="mul" value="${num1*num2}"/>
<c:set var="divide" value="${num1/num2}"/>

Addition of ${num1} and ${num2} = ${add}<br/>
Subtraction of ${num1} and ${num2} = ${sub}<br/>
Multiplication of ${num1} and ${num2} = ${mul}<br/>
Division of ${num1} and ${num2} = ${divide}<br/>
 

<%--c:if tag --%>
<c:if test="${num1%2==0}">
	${num1} is even number
</c:if>
<c:if test="${num2%2==0}">
	${num2} is even number
</c:if>

<%--c:choose tag --%>
<c:choose>
	<c:when test="${num1>num2}">
		${num1} is bigger
	</c:when>
	<c:when test="${num1<num2}">
		${num2} is bigger
	</c:when>
	<c:otherwise>
		Both are equal
	</c:otherwise>
</c:choose>
<br>

<%--c:forEach tag --%>
<c:forEach var="i" begin="1" end="10" step="1">
	${i}
</c:forEach>



