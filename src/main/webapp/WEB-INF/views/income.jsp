<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: oem
  Date: 26.06.2022
  Time: 19:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>Dane dochodowe</p>
<form:form modelAttribute="income">

    <label>Forma zatrudnienia</label>
    <form:select path="formOfEmployment">
        <form:option value="-" label="--Please select"/>
        <form:option id="1" value="Umowa o pracę na czas nieokreślony" label="Umowa o pracę na czas nieokreślony"/>
        <form:option id="2" value="Umowa o pracę na czas określony" label="Umowa o pracę na czas określony"/>
        <form:option id="3" value="Działalność gospodarcza" label="Działalność gospodarcza"/>
    </form:select>
    <form:errors path="formOfEmployment"></form:errors><br/><br/>
    <label>Data rozpoczęcia zatrudnienia/prowadzenia działalności gospodarczej</label>
    <form:input path="dateOfEmploymentFrom"></form:input>
    <form:errors path="dateOfEmploymentFrom"></form:errors><br/><br/>
    <label>Branża</label>
    <form:select path="trade">
        <form:option value="-" label="--Please select"/>
        <form:option id="1" value="Administracja publiczna" label="Administracja publiczna"/>
        <form:option id="2" value="Służby mundurowe" label="IT"/>
        <form:option id="3" value="Służba zdrowia" label="Służba zdrowia"/>
        <form:option id="4" value="Górnictwo" label="Górnictwo"/>
        <form:option id="5" value="inne" label="inne"/>
    </form:select>
    <form:errors path="trade"></form:errors><br/><br/>
    <label>Średni dochód z ostatnich 12 miesięcy</label>
    <form:input path="averageIncome"></form:input>
    <form:errors path="averageIncome"></form:errors><br/><br/>
    <label>Nazwa pracodawcy/nazwa prowadzonej działalności</label>
    <form:input path="nameOfEmployer"></form:input>
    <form:errors path="nameOfEmployer"></form:errors><br/><br/>
    <label>Suma miesięcznych zobowiązań ratalnych</label>
    <form:input path="totalInstallmentOfObligations"></form:input>
    <form:errors path="totalInstallmentOfObligations"></form:errors><br/><br/>
    <label>Suma miesięcznych wydatków domowych</label>
    <form:input path="totalHouseholdExpenses"></form:input>
    <form:errors path="totalHouseholdExpenses"></form:errors><br/><br/>

    <input type="submit" value="Dalej">



</form:form>

</body>
</html>
