<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title></title>
    </head>
    <body>
        <h1>${quiz.title}</h1>
        <c:forEach var="question" items="${quiz.questions}">
            <p>${question.questionText}</p>
            <c:forEach var="option" items="${question.options}">
                <input type="radio" name="option" id="option" value="${option}">
            </c:forEach>
        </c:forEach>
    </body>
</html>