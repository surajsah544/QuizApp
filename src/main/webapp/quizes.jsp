<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <title>Math Quiz</title>
    <style>
      body {
        font-family: Arial, sans-serif;
        margin: 20px;
      }
      h1 {
        color: #333;
      }

      .quiz {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 20px;
        border: 1px solid gray;
        border-radius: 8px;
      }
    </style>
  </head>
  <body>
    <h1>Quizes:</h1>
    <c:forEach var="quiz" items="${quizzes}" varStatus="status">
      <div class="quiz">
        <h2>${quiz.title}</h2>
        <a href="quizes?id=${status.index}" class="start-btn">Attempt</a>
      </div>
    </c:forEach>
  </body>
</html>
