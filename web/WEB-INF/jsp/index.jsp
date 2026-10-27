<%@page import="org.springframework.core.SpringVersion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>springApp1 - Información del estudiante</title>
        <style>
            body { font-family: Arial, sans-serif; background: #f4f6f9; color: #1f2933; margin: 0; }
            .tarjeta { max-width: 620px; margin: 48px auto; background: #fff; border-radius: 8px;
                       box-shadow: 0 2px 8px rgba(0, 0, 0, .12); padding: 32px; }
            h1 { color: #1f4e79; font-size: 1.6em; margin-top: 0; }
            table { width: 100%; border-collapse: collapse; margin-bottom: 24px; }
            th, td { text-align: left; padding: 10px 12px; border-bottom: 1px solid #dde3ea; }
            th { width: 35%; color: #1f4e79; }
            .entorno { font-size: .85em; color: #52606d; }
            .entorno th { color: #52606d; }
        </style>
    </head>
    <body>
        <div class="tarjeta">
            <h1>Bienvenido a springApp1</h1>
            <p>Aplicación web configurada con Spring Web MVC y desplegada en GlassFish.</p>

            <%-- Información del estudiante (punto 4 de la actividad) --%>
            <table>
                <tr><th>Nombre</th><td>AL07075185</td></tr>
                <tr><th>Matrícula</th><td>AL07075185</td></tr>
                <tr><th>Escuela</th><td>Universidad Tecmilenio</td></tr>
                <tr><th>Curso</th><td>Computación avanzada en Java</td></tr>
                <tr><th>Profesor</th><td>Jesús Cazares Martínez</td></tr>
            </table>

            <%-- Datos del entorno: confirman la versión de Spring y el servidor en ejecución --%>
            <table class="entorno">
                <tr><th>Spring Framework</th><td><%= SpringVersion.getVersion() %></td></tr>
                <tr><th>Servidor</th><td><%= application.getServerInfo() %></td></tr>
                <tr><th>Java</th><td><%= System.getProperty("java.version") %></td></tr>
            </table>
        </div>
    </body>
</html>
