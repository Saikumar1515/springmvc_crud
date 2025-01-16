<%@ page isELIgnored="false" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Fetch</title>
    <style>
        table {
            border-collapse: collapse; 
            width: 80%; 
        }
        th, td {
            padding: 10px 20px; 
            text-align: left; 
        }
        th {
            background-color: #f2f2f2; 
        }
        td {
            background-color: #fff; 
        }
    </style>
</head>
<body>
<div align="center">
    <h1>Employee Records Table</h1>
    <h3 style="color:green">${success}</h3>
    <table border="1">
        <tr>
            <th>Name</th> 
            <th>Email</th> 
            <th>Mobile</th>
            <th>Salary</th>
            <th>Delete</th>
            <th>Edit</th>
        </tr>
        <c:if test="${not empty list}">
            <c:forEach var="emp" items="${list}">
                <tr>
                    <td>${emp.name}</td>
                    <td>${emp.email}</td>
                    <td>${emp.mobile}</td>
                    <td>${emp.salary}</td>
                    <td><a href="delete?id=${emp.id}"><button type="button">Delete</button></a></td>
                    <td><a href="edit?id=${emp.id}"><button type="button">Edit</button></a></td>
                </tr>
            </c:forEach>
        </c:if>
        <c:if test="${empty list}">
            <tr>
                <td colspan="6" style="text-align:center;">No records found</td>
            </tr>
        </c:if>
    </table>
    <br>
    <a href="home"><button type="button">Back</button></a>
</div>
</body>
</html>
