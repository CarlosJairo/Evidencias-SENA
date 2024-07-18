<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>
        <style>
            body {
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                background-color: #f3f7ec;
                min-height: 100vh;
                color: #eeeeee;
                font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS",
                    sans-serif;
            }
            h1 {
                text-align: center;
                font-size: 3rem;
                color: #e88d67;
            }
            form {
                display: flex;
                flex-direction: column;
                background-color: #005c78;
                padding: 1.5rem;
                width: 30rem;
                border-radius: 10px;
                box-shadow: 0 0 10px #333;
            }
            label {
                padding-left: 0.3rem;
                margin-bottom: 0.3rem;
            }
            input {
                border-radius: 5px;
                padding: 0.5rem 1rem;
                outline: none;
                border: 0;
                font-family: inherit;
                font-size: 1rem;
            }
            input[type="text"],
            input[type="password"] {
                margin-bottom: 1rem;
            }

            input[type="submit"] {
                background-color: #e88d67;
                padding: 0.5rem;
                color: white;
                font-family: inherit;
                border: none;
                cursor: pointer;
                transition: background-color 200ms linear;
            }
        </style>
    </head>

    <body>
    <section>
        <h1>Spring Boot - MVC</h1>
        <form action="/AA3_EV01/login" method="post">
            <label for="usuario">Usuario</label>
            <input type="text" name="usuario" id="usuario">
            <label for="contraseña">Contraseña</label>
            <input type="password" name="contraseña" id="contraseña">
            <input type="submit" value="Iniciar Sesión" />
        </form>
    </section>
</body>
</html>
