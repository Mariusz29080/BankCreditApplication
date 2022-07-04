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
<a class="btn btn-info" href="/creditForm/add/${start.id}">Dodaj kredytobiorcę</a>
<table class="table">

    <tr>
        <td>Parametr kredytu</td>
        <td>Wartość parametru</td>
    </tr>
    <tr>
        <td>Kwota kredytu</td>
        <td>${start.amount} zł</td>
    </tr>
    <tr>
        <td>Cel kredytu</td>
        <td>${start.purposeOfCredit}</td>
    </tr>
    <tr>
        <td>Okres kredytu (w miesiącach)</td>
        <td>${start.creditPeriod}</td>
    </tr>
    <tr>
        <td>Cena/wartość nieruchomości</td>
        <td>${start.price} zł</td>
    </tr>
    <tr>
        <td>Wkład własny kredytobiorcy</td>
        <td>${start.ownContribution} zł</td>
    </tr>
    <tr>
        <td>Rodzaj rat</td>
        <td>${start.typeOfflat}</td>
    </tr>
    <tr>
        <td>Rodzaj oprocentowania</td>
        <td>${start.interest}</td>
    </tr>

</table>
<%--<table class="table">--%>
<%--    <tr>--%>
<%--        <th>Imię</th>--%>
<%--        <th>Nazwisko</th>--%>
<%--        <th>Płeć</th>--%>
<%--        <th>PESEL</th>--%>
<%--        <th>dateOfBirth</th>--%>
<%--        <th>email</th>--%>
<%--        <th>formOfEmployment</th>--%>
<%--        <th>purposeOfCredit</th>--%>
<%--        <th>creditPeriod</th>--%>
<%--        <th>dochód</th>--%>

<%--    </tr>--%>
<%--    <c:forEach items="${borrower}" var="borrower">--%>
<%--    <tr>--%>

<%--        <td>${borrower.firstName}</td>--%>
<%--        <td>${borrower.lastName}</td>--%>
<%--        <td>${borrower.sex}</td>--%>
<%--        <td>${borrower.pesel}</td>--%>
<%--        <td>${borrower.dateOfBirth}</td>--%>
<%--        <td>${borrower.email}</td>--%>
<%--        <td>${borrower.formOfEmployment}</td>--%>

<%--        <td>--%>
<%--            <a href="/creditForm/addIncome/${borrower.id}">Dodaj dochód</a>--%>
<%--        </td>--%>
<%--            &lt;%&ndash;            <td>&ndash;%&gt;--%>
<%--            &lt;%&ndash;                <a class="confirmDelete" href="/book/delete/${book.id}">usuń</a>&ndash;%&gt;--%>
<%--            &lt;%&ndash;                <a href="/book/edit/${book.id}">edytuj</a>&ndash;%&gt;--%>
<%--            &lt;%&ndash;            </td>&ndash;%&gt;--%>
<%--    </tr>--%>
<%--    </c:forEach>--%>

<%--    <a class="btn btn-info" href="addIncome">Dodaj dochód</a>--%>
<%--    <table class="table">--%>
<%--        <tr>--%>
<%--            <th>borrower</th>--%>
<%--            <th>AverageIncome</th>--%>
<%--            <th>formOfEmployment</th>--%>
<%--            <th>trade</th>--%>
<%--            <th>nameOfEmployer</th>--%>

<%--        </tr>--%>
<%--        <c:forEach items="${icome}" var="income">--%>
<%--            <tr>--%>
<%--                <td>${income.borrower}</td>--%>
<%--                <td>${income.AverageIncome}</td>--%>
<%--                <td>${income.formOfEmployment}</td>--%>
<%--                <td>${income.trade}</td>--%>
<%--                <td>${income.nameOfEmployer}</td>--%>
<%--                    &lt;%&ndash;            <td>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                <a class="confirmDelete" href="/book/delete/${book.id}">usuń</a>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                <a href="/book/edit/${book.id}">edytuj</a>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;            </td>&ndash;%&gt;--%>
<%--            </tr>--%>
<%--        </c:forEach>--%>
<%--    </table>--%>
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
