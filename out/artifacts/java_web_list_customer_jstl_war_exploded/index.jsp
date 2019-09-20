<%@ page import="customer.Customer" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: pmtri
  Date: 9/19/2019
  Time: 4:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>List Customer</title>
</head>
<body>
<%
    ArrayList<Customer> listCustomers = new ArrayList<>();
    listCustomers.add(new Customer("Đào A", "20/10/2000", "Hà Nội", "A.jpg"));
    listCustomers.add(new Customer("Đào B", "19/12/2001", "Cà Mau", "B.jpg"));
    listCustomers.add(new Customer("Đào C", "21/11/2000", "Tuyên Quang", "C.jpg"));
    listCustomers.add(new Customer("Đào D", "19/9/2001", "Nha Trang", "D.jpg"));
    pageContext.setAttribute("listCustomers", listCustomers);
%>
<form>
    <table border="1px solid red">
        <tr><th colspan="4"><h1>Danh sách khách hàng</h1></th></tr>
        <tr>
            <td width="150px" height="50px">Tên</td>
            <td width="150px" height="50px">Ngày sinh</td>
            <td width="150px" height="50px">Địa chỉ</td>
            <td width="150px" height="50px">Ảnh</td>
        </tr>
        <c:forEach var="customer" items="#{listCustomers}">
            <tr>
                <td><c:out value="${customer.name}"/></td>
                <td><c:out value="${customer.birthday}"/></td>
                <td><c:out value="${customer.address}"/></td>
                <td><img src="<c:out value="${customer.image}"/>"  height=150px/></td>
            </tr>
        </c:forEach>
    </table>
</form>
</body>
</html>
