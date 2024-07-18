<%-- 
    Document   : Panel
    Created on : 8/06/2024, 2:19:22 a. m.
    Author     : Carlos Chamorro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                background-color: #333333;
                color: white;
                font-family: Arial, sans-serif;
            }
            .container {
                text-align: center;
                margin-top: 50px;
            }
            .greeting {
                font-size: 24px;
                margin-bottom: 20px;
            }
            .content {
                font-size: 18px;
            }
            .cards {
                display: flex;
                justify-content: center;
                gap: 20px;
                margin-bottom: 50px;
            }
            .card {
                background-color: #444;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
                overflow: hidden;
                width: 300px;
                text-align: left;
                color: #ddd;
                padding: 20px;
            }
            .card svg {
                width: 100%;
                height: 10rem;
            }
            .card-content {
                padding: 0 0 20px;
            }
            .card-title {
                font-size: 20px;
                margin-bottom: 10px;
            }
            .card-description {
                font-size: 16px;
                line-height: 1.5;
            }
            .svg-user {
                fill: #41B06E;
            }
            .svg-settings {
                fill: #EBF400;
            }
            .svg-call {
                fill: #CD1818;
            }

        </style>
    </head>
    <body>
        <%
            String usuario = (String) session.getAttribute("usuario");
            if (usuario == null) { 
                response.sendRedirect("index.html");
                return;
            }
        %>

        <section class="container">
            <div class="greeting">
                <h1>Bienvenido, <%= usuario %>!</h1>
            </div>
            <div class="content">
                <p>Este es tu panel de usuario. Aquí puedes encontrar información personalizada y opciones para gestionar tu cuenta.</p>
            </div>
        </section>

        <section class="cards">
            <article class="card">
                <svg xmlns="http://www.w3.org/2000/svg" class="svg-user" viewBox="0 0 448 512"><path d="M224 256A128 128 0 1 0 224 0a128 128 0 1 0 0 256zm-45.7 48C79.8 304 0 383.8 0 482.3C0 498.7 13.3 512 29.7 512H418.3c16.4 0 29.7-13.3 29.7-29.7C448 383.8 368.2 304 269.7 304H178.3z"/></svg>
                <div class="card-content">
                    <h3 class="card-title">Mi Perfil</h3>
                    <p class="card-description">
                        Actualiza tu información personal, cambia tu contraseña y configura tus preferencias de cuenta.
                    </p>
                </div>
            </article>
            <article class="card">
                <div class="card-content">
                    <svg xmlns="http://www.w3.org/2000/svg" class="svg-settings" viewBox="0 0 640 512">
                    <path
                        d="M308.5 135.3c7.1-6.3 9.9-16.2 6.2-25c-2.3-5.3-4.8-10.5-7.6-15.5L304 89.4c-3-5-6.3-9.9-9.8-14.6c-5.7-7.6-15.7-10.1-24.7-7.1l-28.2 9.3c-10.7-8.8-23-16-36.2-20.9L199 27.1c-1.9-9.3-9.1-16.7-18.5-17.8C173.9 8.4 167.2 8 160.4 8h-.7c-6.8 0-13.5 .4-20.1 1.2c-9.4 1.1-16.6 8.6-18.5 17.8L115 56.1c-13.3 5-25.5 12.1-36.2 20.9L50.5 67.8c-9-3-19-.5-24.7 7.1c-3.5 4.7-6.8 9.6-9.9 14.6l-3 5.3c-2.8 5-5.3 10.2-7.6 15.6c-3.7 8.7-.9 18.6 6.2 25l22.2 19.8C32.6 161.9 32 168.9 32 176s.6 14.1 1.7 20.9L11.5 216.7c-7.1 6.3-9.9 16.2-6.2 25c2.3 5.3 4.8 10.5 7.6 15.6l3 5.2c3 5.1 6.3 9.9 9.9 14.6c5.7 7.6 15.7 10.1 24.7 7.1l28.2-9.3c10.7 8.8 23 16 36.2 20.9l6.1 29.1c1.9 9.3 9.1 16.7 18.5 17.8c6.7 .8 13.5 1.2 20.4 1.2s13.7-.4 20.4-1.2c9.4-1.1 16.6-8.6 18.5-17.8l6.1-29.1c13.3-5 25.5-12.1 36.2-20.9l28.2 9.3c9 3 19 .5 24.7-7.1c3.5-4.7 6.8-9.5 9.8-14.6l3.1-5.4c2.8-5 5.3-10.2 7.6-15.5c3.7-8.7 .9-18.6-6.2-25l-22.2-19.8c1.1-6.8 1.7-13.8 1.7-20.9s-.6-14.1-1.7-20.9l22.2-19.8zM112 176a48 48 0 1 1 96 0 48 48 0 1 1 -96 0zM504.7 500.5c6.3 7.1 16.2 9.9 25 6.2c5.3-2.3 10.5-4.8 15.5-7.6l5.4-3.1c5-3 9.9-6.3 14.6-9.8c7.6-5.7 10.1-15.7 7.1-24.7l-9.3-28.2c8.8-10.7 16-23 20.9-36.2l29.1-6.1c9.3-1.9 16.7-9.1 17.8-18.5c.8-6.7 1.2-13.5 1.2-20.4s-.4-13.7-1.2-20.4c-1.1-9.4-8.6-16.6-17.8-18.5L583.9 307c-5-13.3-12.1-25.5-20.9-36.2l9.3-28.2c3-9 .5-19-7.1-24.7c-4.7-3.5-9.6-6.8-14.6-9.9l-5.3-3c-5-2.8-10.2-5.3-15.6-7.6c-8.7-3.7-18.6-.9-25 6.2l-19.8 22.2c-6.8-1.1-13.8-1.7-20.9-1.7s-14.1 .6-20.9 1.7l-19.8-22.2c-6.3-7.1-16.2-9.9-25-6.2c-5.3 2.3-10.5 4.8-15.6 7.6l-5.2 3c-5.1 3-9.9 6.3-14.6 9.9c-7.6 5.7-10.1 15.7-7.1 24.7l9.3 28.2c-8.8 10.7-16 23-20.9 36.2L315.1 313c-9.3 1.9-16.7 9.1-17.8 18.5c-.8 6.7-1.2 13.5-1.2 20.4s.4 13.7 1.2 20.4c1.1 9.4 8.6 16.6 17.8 18.5l29.1 6.1c5 13.3 12.1 25.5 20.9 36.2l-9.3 28.2c-3 9-.5 19 7.1 24.7c4.7 3.5 9.5 6.8 14.6 9.8l5.4 3.1c5 2.8 10.2 5.3 15.5 7.6c8.7 3.7 18.6 .9 25-6.2l19.8-22.2c6.8 1.1 13.8 1.7 20.9 1.7s14.1-.6 20.9-1.7l19.8 22.2zM464 304a48 48 0 1 1 0 96 48 48 0 1 1 0-96z"
                        />
                    </svg>
                    <h3 class="card-title">Configuraciones</h3>
                    <p class="card-description">
                        Personaliza la configuración de tu cuenta, gestiona notificaciones y ajusta tus preferencias de privacidad.
                    </p>
                </div>
            </article>
            <article class="card">
                <svg xmlns="http://www.w3.org/2000/svg" class="svg-call" viewBox="0 0 512 512">
                <path
                    d="M164.9 24.6c-7.7-18.6-28-28.5-47.4-23.2l-88 24C12.1 30.2 0 46 0 64C0 311.4 200.6 512 448 512c18 0 33.8-12.1 38.6-29.5l24-88c5.3-19.4-4.6-39.7-23.2-47.4l-96-40c-16.3-6.8-35.2-2.1-46.3 11.6L304.7 368C234.3 334.7 177.3 277.7 144 207.3L193.3 167c13.7-11.2 18.4-30 11.6-46.3l-40-96z"
                    />
                </svg>
                <div class="card-content">
                    <h3 class="card-title">Soporte</h3>
                    <p class="card-description">
                        Obtén ayuda y soporte, consulta las preguntas frecuentes o contacta con el servicio de atención al cliente.
                    </p>
                </div>
            </article>
        </section>
    </body>
</html>
