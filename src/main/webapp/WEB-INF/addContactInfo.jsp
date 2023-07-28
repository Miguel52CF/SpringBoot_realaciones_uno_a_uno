<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
                crossorigin="anonymous">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
                crossorigin="anonymous"></script>
        </head>

        <body class="container">
            <div class="d-flex justify-content-md-end m-2">
                <a href="/" class="btn btn-secondary">Dashboard</a>
            </div>

            <h1>Contact Info</h1>
            <form:form action="/contacts/create" method="post" modelAttribute="ContactInfo">
                <p>
                    <form:label path="student">Person:</form:label>
                    <form:errors path="student" />
                    <form:select path="student">
                        <c:forEach var="i" items="${students}">
                            <option value="${i.id}">
                                <c:out value="${i.firstName}" />
                                <c:out value="${i.lastName}" />
                            </option>
                        </c:forEach>
                    </form:select>
                </p>
                <p>
                    <form:label path="address" class="form-label">Address:</form:label>
                    <form:errors path="address" />
                    <form:input path="address" class="form-control" />
                </p>
                <p>
                    <form:label path="city" class="form-label">City:</form:label>
                    <form:errors path="city" />
                    <form:input path="city" class="form-control" />
                </p>
                <p>
                    <form:label path="state" class="form-label">State:</form:label>
                    <form:errors path="state" />
                    <form:input path="state" class="form-control" />
                </p>
                <div class="d-flex justify-content-md-end m-2">
                    <input type="submit" class="btn btn-info" value="Create">
                </div>
            </form:form>
        </body>

        </html>