<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title></title>
    </head>
    <body>
        <h1>${quiz.title}</h1>
        
        <c:if test="${param.correct != null}">
            <p>You have got ${param.correct} out of ${param.total}</p>
        </c:if>
        
        <form action="quizes?action=eval" method="POST">
            <input type="hidden" name="quiz" value="${quizId}">
            <c:forEach var="question" items="${quiz.questions}" varStatus="quesStatus">
                <p><b>Ques: ${quesStatus.index + 1}&nbsp;</b>${question.questionText}</p>
                <c:forEach var="option" items="${question.options}" varStatus="optStatus">
                    <input type="radio" name="option_${quesStatus.index}" value="${option}">
                    <label for="option_${quesStatus.index}_${optStatus.index}">${option}</label>
                </c:forEach><br /><br />
            </c:forEach>
            <input type="submit" value="Submit Quiz">
            <a href="quizes">Go to Home</a>
        </form>


    </body>
    </html>
    