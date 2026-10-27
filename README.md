# springApp1

Aplicación web básica con **Spring Web MVC**, creada en NetBeans y desplegada en GlassFish.
Actividad 4 del curso *Computación avanzada en Java*, Universidad Tecmilenio (Tema 9. Spring Framework).

## Entorno

| Componente | Versión |
|---|---|
| IDE | Apache NetBeans 31 |
| Framework | Spring Framework 7.0.10 (biblioteca de NetBeans `SpringFramework-7.0.10`) |
| Servidor | Eclipse GlassFish 8 (Jakarta EE 11, Servlet 6.1), dominio `domain1` en localhost |
| JDK | 21 |
| Tipo de proyecto | Java with Ant > Java Web > Web Application |

## Flujo de la aplicación

1. `web.xml` abre `redirect.jsp` como página de bienvenida.
2. `redirect.jsp` redirige a `index.htm`.
3. El `DispatcherServlet` (mapeado a `*.htm`) consulta `dispatcher-servlet.xml`: `index.htm` corresponde a `indexController`.
4. `indexController` regresa la vista `index`, que `InternalResourceViewResolver` resuelve como `/WEB-INF/jsp/index.jsp`.
5. `index.jsp` muestra la información del estudiante y la versión de Spring en ejecución.

## Estructura

```
springApp1/
├── web/
│   ├── redirect.jsp
│   └── WEB-INF/
│       ├── web.xml
│       ├── beans.xml          (activa CDI, requerido por GlassFish 8)
│       ├── applicationContext.xml
│       ├── dispatcher-servlet.xml
│       └── jsp/index.jsp
├── nbproject/
├── build.xml
└── dist/springApp1.war
```

## Ejecución

1. Registrar en NetBeans la biblioteca `SpringFramework-7.0.10` (Tools > Libraries) con los 11 archivos .jar de Spring 7.0.10 y sus dependencias.
2. Abrir el proyecto, seleccionar GlassFish 8 en Properties > Run y presionar **Run**.
3. Abrir `http://localhost:8080/springApp1/`.
