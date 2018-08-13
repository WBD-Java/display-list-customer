<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: colongchong
  Date: 8/5/18
  Time: 8:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
  <head>
    <title>List Customers</title>
  </head>
  <body>
  <table border="1px">
    <caption><h1>List Customers</h1></caption>
    <tr>
      <th>Name</th>
      <th>Birthday</th>
      <th>Address</th>
      <th>Image</th>
    </tr>
    <c:forEach items='${requestScope["customers"]}' var="customer">
      <tr>
        <td>${customer.getName()}</td>
        <td>${customer.getBirthday()}</td>
        <td>${customer.getAddress()}</td>
        <td><img src=${customer.getImage()} width="60px" height="40px" alt="Image"></td>
      </tr>
    </c:forEach>
  </table>
  </body>
</html>
