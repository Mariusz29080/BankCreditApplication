<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: oem
  Date: 19.06.2022
  Time: 20:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<body>
<p>Dane nieruchomości</p>
<form:form modelAttribute="estate">
    <label>Kraj</label><br/>
    <form:select path="country">
        <form:option value="-" label="--Please select"/>
        <form:option id="PL" value="PL" label="Polska"/>
    </form:select>
    <form:errors path="country"></form:errors><br/><br/>
    <label>Województwo</label><br/>
    <form:select path="province">
        <form:option value="-" label="--Please select"/>
        <form:option id="1" value="dolnośląskie" label="dolnośląskie"/>
        <form:option id="2" value="kujawsko-pomorskie" label="kujawsko-pomorskie"/>
        <form:option id="3" value="lubelskie" label="lubelskie"/>
        <form:option id="4" value="lubuskie" label="lubuskie"/>
        <form:option id="5" value="łódzkie" label="łódzkie"/>
        <form:option id="6" value="małopolskie" label="małopolskie"/>
        <form:option id="7" value="mazowieckie" label="mazowieckie"/>
        <form:option id="8" value="opolskie" label="opolskie"/>
        <form:option id="9" value="podkarpackie" label="podkarpackie"/>
        <form:option id="10" value="podlaskie" label="podlaskie"/>
        <form:option id="11" value="pomorskie" label="pomorskie"/>
        <form:option id="12" value="śląskie" label="śląskie"/>
        <form:option id="13" value="świętokrzyskie" label="świętokrzyskie"/>
        <form:option id="14" value="warmińsko-mazurskie" label="warmińsko-mazurskie"/>
        <form:option id="15" value="wielkopolskie" label="wielkopolskie"/>
        <form:option id="16" value="zachodniopomorskie" label="zachodniopomorskie"/>
    </form:select>
    <form:errors path="province"></form:errors><br/><br/>
    <label>Powiat</label><br/>
    <form:input path="county"></form:input>
    <form:errors path="county"></form:errors><br/><br/>
    <label>Gmina</label><br/>
    <form:input path="community"></form:input>
    <form:errors path="community"></form:errors><br/><br/>
    <label>Miejscowość</label><br/>
    <form:input path="locality"></form:input>
    <form:errors path="locality"></form:errors><br/><br/>
    <label>Ulica</label><br/>
    <form:input path="street"></form:input>
    <form:errors path="street"></form:errors><br/><br/>
    <label>Numer domu</label><br/>
    <form:input path="houseNo"></form:input>
    <form:errors path="houseNo"></form:errors><br/><br/>
    <label>Numer mieszkania</label><br/>
    <form:input path="flatNo"></form:input>
    <form:errors path="flatNo"></form:errors><br/><br/>
    <label>Numer księgi wieczystej</label><br/>
    <form:input path="registerNumber"></form:input>
    <form:errors path="registerNumber"></form:errors><br/><br/>
    <label>Powierzchnia użytkowa</label><br/>
    <form:input path="area"></form:input>
    <form:errors path="area"></form:errors><br/><br/>
    <label>Standard</label><br/>
    <form:input path="standard"></form:input>
    <form:errors path="standard"></form:errors><br/><br/>

    <input id="dalej" type="submit" value="Dalej">
</form:form>
</body>
</body>
</html>

