<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
        <div class="d-flex justify-content-md-end m-2">
            <a href="/" class="btn btn-secondary">Dashboard</a>
        </div>

        <h1>New Student</h1>
        <form:form action="/students/create" method="post" modelAttribute="student">
            <p>
                <form:label path="firstName" class="form-label">First Name</form:label>
                <form:errors path="firstName" />
                <form:input path="firstName" class="form-control" />
            </p>
            <p>
                <form:label path="lastName" class="form-label">Last Name</form:label>
                <form:errors path="lastName" />
                <form:input path="lastName" class="form-control" />
            </p>
            <p>
                <label path="age" class="form-label">Age</label>
                <form:errors path="age" />
                <form:input path="age" type="number" class="form-control" />
            </p>
            <div class="d-flex justify-content-md-end m-2">
                <input type="submit" class="btn btn-info" value="Create">
            </div>
        </form:form>
    </body>

    </html>