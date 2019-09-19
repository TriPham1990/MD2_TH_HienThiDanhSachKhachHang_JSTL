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
    listCustomers.add(new Customer("Đào A", "20/10/2000", "Hà Nội", "<img src=\"A.jpg\"/>"));
    listCustomers.add(new Customer("Đào B", "19/12/2001", "Cà Mau", "<img src=\"B.jpg\"/>"));
    listCustomers.add(new Customer("Đào C", "21/11/2000", "Tuyên Quang", "<img src=\"C.jpg\"/>"));
    listCustomers.add(new Customer("Đào D", "19/9/2001", "Nha Trang", "<img src=\"D.jpg\"/>"));
    pageContext.setAttribute("listCustomers", listCustomers);
%>
<form>
    <table>
        <tr><h2>Danh sách khách hàng</h2></tr>
        <tr>
            <td>Tên</td>
            <td>Ngày sinh</td>
            <td>Địa chỉ</td>
            <td>Ảnh</td>
        </tr>
        <c:forEach var="customer" items="#{listCustomers}">
            <tr>
                <td><c:out value="${customer.name}"/></td>
                <td><c:out value="${customer.birthday}"/></td>
                <td><c:out value="${customer.address}"/></td>
                <td><c:out value="${customer.image}"/></td>
            </tr>
        </c:forEach>
    </table>
</form>
</body>
</html>
