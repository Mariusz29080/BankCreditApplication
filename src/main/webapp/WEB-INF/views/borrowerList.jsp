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

<%--<jsp:include page="result.jsp"/>--%>
<%--<c:forEach items="${start}" var="start">--%>

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
<%--</c:forEach>--%>
<a class="btn btn-info" href="/creditForm/add/${start.id}">Dodaj kredytobiorcę</a>
<h3>Dane kredytobiorców</h3>
<table class="table">
    <tr>
        <th>Imię</th>
        <th>Nazwisko</th>
        <th>Płeć</th>
        <th>PESEL</th>
        <th>Data urodzenia</th>
        <th>email</th>
        <th>Żródła dochodu</th>


    </tr>
    <c:forEach items="${borrowers}" var="borrower">
        <tr>

            <td>${borrower.firstName}</td>
            <td>${borrower.lastName}</td>
            <td>${borrower.sex}</td>
            <td>${borrower.pesel}</td>
            <td>${borrower.dateOfBirth}</td>
            <td>${borrower.email}</td>
            <td>
                <a href="/creditForm/addIncome/${borrower.id}">Dodaj dochód</a>
            </td>
        </tr>
    </c:forEach>
</table>

<h3>Dane dochodowe </h3>
<table class="table">
    <tr>
        <th>Kredytobiorca</th>
        <th>Średni dochód z ostatnich 12 miesięcy</th>
        <th>Forma zatrudnienia</th>
        <th>Data rozpoczęcia zatrudnienia</th>
        <th>Branża</th>
        <th>Nazwa pracodawcy/nazwa działalności gospodarczej</th>
        <th>Suma miesięcznych zobowiązań ratalnych</th>
        <th>Suma miesięcznych wydatków domowych</th>
        <th>Usuń dochód</th>

    </tr>
    <c:forEach items="${incomes}" var="income">
        <tr>
            <td>${income.borrower.firstName} ${income.borrower.lastName}</td>
            <td>${income.averageIncome}</td>
            <td>${income.formOfEmployment}</td>
            <td>${income.dateOfEmploymentFrom}</td>
            <td>${income.trade}</td>
            <td>${income.nameOfEmployer}</td>
            <td>${income.totalInstallmentOfObligations}</td>
            <td>${income.totalHouseholdExpenses}</td>
            <td>
                <a href="/creditForm/delete/${income.id}">Usuń dochód</a>
            </td>
        </tr>

    </c:forEach>
</table>
<a class="btn btn-info" href="/creditForm/addEstate/${start.id}">Dodaj nieruchomość</a>
<h3>Dane nieruchomości </h3>


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
