<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
            crossorigin="anonymous"></script>
    </head>

    <body class="container">
        <h1>All Students</h1>
        <table class="table table-bordered">
            <thead class="table-active border border-dark">
                <th>Name</th>
                <th>Age</th>
                <th>Address</th>
                <th>City</th>
                <th>State</th>
            </thead>
            <c:forEach var="i" items="${students}">
                <tr>
                    <td>
                        <c:out value="${i.firstName}" />
                        <c:out value="${i.lastName}" />
                    </td>
                    <td>
                        <c:out value="${i.age}" />
                    </td>
                    <td>
                        <c:out value="${i.infoContact.address}" />
                    </td>
                    <td>
                        <c:out value="${i.infoContact.city}" />
                    </td>
                    <td>
                        <c:out value="${i.infoContact.state}" />
                    </td>
                </tr>
            </c:forEach>
        </table>
        <div class=" d-flex justify-content-center gap-3">
            <a href="/students/new" class="btn btn-secondary ">New Student</a>
            <a href="/contacts/new" class="btn btn-secondary ">Add contact info</a>
        </div>
    </body>

    </html>