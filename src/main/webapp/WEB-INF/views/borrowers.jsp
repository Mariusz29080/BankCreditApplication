<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: oem
  Date: 19.06.2022
  Time: 19:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>Dane klienta</p>

<form:form modelAttribute="borrower">
    <label>Imię</label>
    <form:input path="firstName"></form:input>
    <form:errors path="firstName"></form:errors><br/><br/>
    <label>Nazwisko</label>
    <form:input path="lastName"></form:input>
    <form:errors path="lastName"></form:errors><br/><br/>
    <label>Płeć</label>
    <form:radiobutton path="sex" label="Mężczyzna" value="M"/>
    <form:radiobutton path="sex" label="Kobieta" value="K"/>
    <form:errors path="sex"></form:errors>
    <<br/><br/>
    <label>PESEL</label>
    <form:input path="pesel"></form:input>
    <form:errors path="pesel"></form:errors><br/><br/>
    <label>Data urodzenia (rrrr-mm-dd)</label>
    <form:input path="dateOfBirth"></form:input>
    <form:errors path="dateOfBirth"></form:errors><br/><br/>

    <label>Email</label>
    <form:input path="email"></form:input>
    <form:errors path="email"></form:errors>
    <br/><br/>
    <label>Forma zatrudnienia</label>
    <form:select path="formOfEmployment">
        <form:option value="-" label="--Please select"/>
        <form:option id="UP" value="umowa o pracę" label="umowa o pracę"/>
        <form:option id="DG" value="działalność gospodarcza" label="działalność gospodarcza"/>
    </form:select>
    <form:errors path="formOfEmployment"></form:errors>

    <br/><br/>

    <input type="submit" value="Dalej">
</form:form>
</body>
</html>