<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: oem
  Date: 27.03.2022
  Time: 14:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
<script
        src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
        crossorigin="anonymous"></script>
<html>
<head>
    <title>Title</title>
</head>
<body>

<jsp:include page="borrowerList.jsp"/>
<table class="table">
    <tr>
        <td>Parametr nieruchomości</td>
        <td>Wartość parametru</td>
    </tr>
    <tr>
        <td>Kraj</td>
        <td>${estate.country} zł</td>
    </tr>
    <tr>
        <td>Województwo</td>
        <td>${estate.province}</td>
    </tr>
    <tr>
        <td>Powiat</td>
        <td>${estate.county}</td>
    </tr>
    <tr>
        <td>Gmina</td>
        <td>${estate.community} zł</td>
    </tr>
    <tr>
        <td>Miejscowość</td>
        <td>${estate.locality} zł</td>
    </tr>
    <tr>
        <td>Ulica</td>
        <td>${estate.street}</td>
    </tr>
    <tr>
        <td>Numer domu</td>
        <td>${estate.houseNo}</td>
    </tr>
    <tr>
        <td>Numer mieszkania</td>
        <td>${estate.flatNo}</td>
    </tr>
    <tr>
        <td>Numer księgi wieczystej</td>
        <td>${estate.registerNumber}</td>
    </tr>
    <tr>
        <td>Powierzchnia użytkowa</td>
        <td>${estate.area}</td>
    </tr>
    <tr>
        <td>Standard wykończenia</td>
        <td>${estate.standard}</td>
    </tr>
</table>
<br/><br/>
<h1>${communicat}</h1>
</body>
<script type="text/javascript">
    $(document).ready(function (e) {
        $(".confirmDelete").click(function (e) {
            e.preventDefault();
            let isExecuted = confirm("are you sure");

            if (isExecuted) {
                window.location.href = $(this).attr("href");
            }
        });
    });
</script>
</html>
