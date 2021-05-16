<%--
  Created by IntelliJ IDEA.
  User: erico
  Date: 14/05/2021
  Time: 21:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
    <title>Registration</title>
    <style>
        .error{
            color: #ff0000;
        }

        .error-block{
            color: #000;
            background-color: #ffeeee;
            border: 3px solid #ff0000;
            padding: 3px;
            margin: 16px;
        }
    </style>
</head>
<body>
<h1>Registration</h1>

<form:form modelAttribute="registration">
    <form:errors path="*" cssClass="error-block" element="div"/>
    <table>
        <tr>
            <td><spring:message code="name"/></td>
            <td><form:input path="name"/></td>
            <td><form:errors path="name" cssClass="error"/></td>
        </tr>
        <tr>
            <td colspan="3">
                <input type="submit" value="<spring:message code="save.changes" text="default"/>"/>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>
