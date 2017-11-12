<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ page isELIgnored="false"%>

<html>
<head>
<title><spring:message code="app.title"/></title>
<!-- Удалённая строчка (Self-made or no) -->
<%--<base href="${pageContext.request.contextPath}/headTag.jsp"/>--%>
<!-- (К)Удалённая строчка (Self-made or no) -->
<jsp:include page="fragments/headTag.jsp"/>
    <!--
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="templatemo_style.css" rel="stylesheet" type="text/css" />

    <link rel="stylesheet" href="nivo-slider.css" type="text/css" media="screen" />
    <link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />
    -->

    <!--<script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/ddsmoothmenu.js"></script>
    -->
    <title>Оборудование Хабаровск</title>
    <!--<link rel="stylesheet" href="css/style.css">-->

    <script type="text/javascript">

        ddsmoothmenu.init({
            mainmenuid: "top_nav", //menu DIV id
            orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
            classname: 'ddsmoothmenu', //class added to menu's outer DIV
            // customtheme: ["cadetblue", "#18374a"],
            contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
        })

    </script>


    <style>

        /*
        input {
            line-height: 2em;  2em is (2 * default line height)
        } */

        /**
   * Grey
   */
        a.button {
            -moz-box-shadow: inset 0 0 0 1px #63ad0d;
            -webkit-box-shadow: inset 0 0 0 1px #63ad0d;
            -moz-border-radius: 3px;
            -webkit-border-radius: 3px;
            background: #eee;
            background: -webkit-gradient(linear, 0 0, 0 bottom, from(#eee), to(#e2e2e2));
            background: -moz-linear-gradient(#eee, #e2e2e2);
            background: linear-gradient(#eee, #e2e2e2);

            box-shadow: inset 0 0 0 1px #f5f5f5;
            color: #555;
            display: inline-block;
            font: bold 12px Arial, Helvetica, Clean, sans-serif;
            margin: 0 10px 10px 0;
            padding: 6px 6px;
            position: relative;
            text-align: center;
            text-decoration: none;
            text-shadow: 0 1px 0 #fafafa; }

        a.button:hover {
            background: #e4e4e4;
            background: -webkit-gradient(linear, 0 0, 0 bottom, from(#e4e4e4), to(#ededed));
            background: -moz-linear-gradient(#e4e4e4, #ededed);
            background: linear-gradient(#e4e4e4, #ededed);
        }






        html, body{
            background-color: white; /* Цвет фона веб-страницы */
            /*Удаление картинки с фона*/
            /*Убрали удаление картинки с фона след строка*/
            /*background-image: url(images/FonBelii.png);*/
            background-repeat:no-repeat;
        }


        a {
            text-decoration: none; /* Отменяем подчеркивание у ссылки */
        }

        a:visited{
            color:#4da6ff;
        }

        .button1 {
            background-color: #82DF86; /* Green */
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 20pt;
        }

        .button1:visited {
            color: white;
        }

        .button2 {
            background-color: white;
            border: 1px solid #F0FFF0;
            color: cadetblue;
            /* 15 32*/
            padding: 10px 10px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 9pt;
        }
        .button3 {
            background-color: white;
            border: 1px solid #F0FFF0;
            color: red;
            /* 15 32*/
            padding: 10px 10px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 9pt;
        }

        .button2:visited {
            color: white;
        }


        #outer
        {
            width:100%;
            text-align: center;
        }

        #outer2
        {
            width:100%;
            text-align: center;
        }

        #outer3
        {
            width:100%;
            text-align: center;
        }

        .inner
        {
            display: inline-block;
        }

        table {
            font-family: 'Open Sans', sans-serif;
            border: none;

        }
        th {
            padding: 8px 10px;
            background: white;


        <%--color: #F9C941; --%>
            color: #4da6ff;
        <%--    border-right: 1px solid; --%>
            font-size: 0.9em;
        }
        th:first-child {
            text-align: left;
        }
        th:last-child {
            border-right: none;
        }
        td {
            vertical-align: middle;
            padding: 10px;
            font-size: 14px;
            text-align: center;
            border: none;
            border-top:1px solid darkgray;
        <%--
        border-top: 1px solid black;
        border-bottom: 1px solid black;
        border-right: 1px solid black; --%>
        }
        td:first-child {

            border: none;

        }
        td:nth-child(2){
            text-align: left;
        }
    </style>
</head>
<body>



<!--<editor-fold desc="Full Basic Staff Core TopJava11">-->
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header navbar-brand"><spring:message code="app.title"/></div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <form:form class="navbar-form" role="form" action="spring_security_check" method="post">
                        <div class="form-group">
                            <input type="text" placeholder="Email" class="form-control" name="username">
                        </div>
                        <div class="form-group">
                            <input type="password" placeholder="Password" class="form-control" name="password">
                        </div>
                        <button type="submit" class="btn btn-success">
                            <span class="glyphicon glyphicon-log-in" aria-hidden="true"></span>
                        </button>
                    </form:form>
                </li>
                <jsp:include page="fragments/lang.jsp"/>
            </ul>
        </div>
    </div>
</div>

<div class="jumbotron">
    <div class="container">
        <c:if test="${param.error}">
            <div class="error">
                    ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
            </div>
        </c:if>
        <c:if test="${not empty param.message}">
            <div class="message">
                <spring:message code="${param.message}"/>
            </div>
        </c:if>
        <br/>
        <p>
            <a class="btn btn-lg btn-success" href="register"><spring:message code="app.register"/> &raquo;</a>
            <button type="submit" class="btn btn-lg btn-primary" onclick="setCredentials('user@yandex.ru', 'password')">
                <spring:message code="app.enter"/> User
            </button>
            <button type="submit" class="btn btn-lg btn-primary" onclick="setCredentials('admin@gmail.com', 'admin')">
                <spring:message code="app.enter"/> Admin
            </button>
        </p>
        <br/>
        <p>Стек технологий: <a href="http://projects.spring.io/spring-security/">Spring Security</a>,
            <a href="http://docs.spring.io/spring/docs/current/spring-framework-reference/html/mvc.html">Spring MVC</a>,
            <a href="http://projects.spring.io/spring-data-jpa/">Spring Data JPA</a>,
            <a href="http://spring.io/blog/2014/05/07/preview-spring-security-test-method-security">Spring Security
                Test</a>,
            <a href="http://hibernate.org/orm/">Hibernate ORM</a>,
            <a href="http://hibernate.org/validator/">Hibernate Validator</a>,
            <a href="http://www.slf4j.org/">SLF4J</a>,
            <a href="https://github.com/FasterXML/jackson">Json Jackson</a>,
            <a href="http://ru.wikipedia.org/wiki/JSP">JSP</a>,
            <a href="http://en.wikipedia.org/wiki/JavaServer_Pages_Standard_Tag_Library">JSTL</a>,
            <a href="http://tomcat.apache.org/">Apache Tomcat</a>,
            <a href="http://www.webjars.org/">WebJars</a>,
            <a href="http://datatables.net/">DataTables plugin</a>,
            <a href="http://ehcache.org">EHCACHE</a>,
            <a href="http://www.postgresql.org/">PostgreSQL</a>,
            <a href="http://junit.org/">JUnit</a>,
            <a href="http://hamcrest.org/JavaHamcrest/">Hamcrest</a>,
            <a href="http://jquery.com/">jQuery</a>,
            <a href="http://ned.im/noty/">jQuery notification</a>,
            <a href="http://getbootstrap.com/">Bootstrap</a>.</p>
    </div>
</div>
<div class="container">
    <div class="lead">
        &nbsp;&nbsp;&nbsp;<a href="https://github.com/JavaOPs/topjava">Java Enterprise проект</a> с
        регистрацией/авторизацией и интерфейсом на основе ролей (USER, ADMIN).
        Администратор может создавать/редактировать/удалять пользователей, а пользователи - управлять своим
        профилем и данными (день, еда, калории) через UI (по AJAX) и по REST интерфейсу с базовой авторизацией.
        Возможна фильтрация данных по датам и времени, при этом цвет записи таблицы еды зависит от того, превышает ли
        сумма
        калорий за день норму (редактируемый параметр в профиле пользователя).
        Весь REST интерфейс покрывается JUnit тестами, используя Spring MVC Test и Spring Security Test.
    </div>
</div>
<jsp:include page="fragments/footer.jsp"/>
<script type="text/javascript">
    <c:if test="${not empty param.username}">
    setCredentials("${param.username}", "");
    </c:if>
    function setCredentials(username, password) {
        $('input[name="username"]').val(username);
        $('input[name="password"]').val(password);
    }
</script>
<!--</editor-fold> Co-->
</body>
</html>