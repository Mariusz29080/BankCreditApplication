<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: oem
  Date: 30.06.2022
  Time: 12:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form:form modelAttribute="start">

    <label>Cel kredytu</label>
    <form:select path="purposeOfCredit">
        <form:option value="-" label="--Please select"/>
        <form:options items="${creditPurposes}"/>
    </form:select>
    <form:errors path="purposeOfCredit"></form:errors>
    <br/><br/>
    <label>Okres kredytowania (w miesiącach) </label>
    <form:input path="creditPeriod"></form:input>
    <form:errors path="creditPeriod"/>
    <br/><br/>
    <label>Kwota kredytu</label>
    <form:input path="amount"></form:input>
    <form:errors path="amount"></form:errors><br/><br/>
    <label>Cena nieruchomości</label>
    <form:input path="price"></form:input>
    <form:errors path="price"></form:errors><br/><br/>
    <label>Wkład własny</label>
    <form:input path="ownContribution"></form:input>
    <form:errors path="ownContribution"></form:errors><br/><br/>

    <label>Rodzaj rat</label>
    <form:select path="typeOfflat">
        <form:option value="-" label="--Please select"/>
        <form:option value="malejące" label="malejące"/>
        <form:option value="rosnące" label="rosnące"/>
    </form:select>
    <form:errors path="typeOfflat"></form:errors>
    <br/><br/>
    <label>Oprocentowanie</label>
    <form:select path="interest">
        <form:option value="-" label="--Please select"/>
        <form:option value="stałe" label="stałe"/>
        <form:option value="interest" label="zmienne"/>
    </form:select>
    <form:errors path="typeOfflat"></form:errors>
    <br/><br/>
    <label>Promocja z ubezpieczeniem na życie</label>
    <form:radiobutton path="promotion" label="Tak" value="T"/>
    <form:radiobutton path="promotion" label="Nie" value="N"/>
    <form:errors path="promotion"></form:errors><br/><br/>



    <input type="submit" value="Dalej">
</form:form>
</body>
</html>
