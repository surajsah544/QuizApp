<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<
<html>
  <head>
    <title>Quiz Application</title>
    <style>
      body {
        font-family: Arial, sans-serif;
        margin: 20px;
      }
      h1 {
        color: #333;
      }
      .quiz {
        margin-bottom: 20px;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
      }
      .question {
        margin: 10px 0;
      }
      .start-btn {
        padding: 10px 20px;
        background-color: #4caf50;
        color: white;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
      }
      .start-btn:hover {
        background-color: #45a049;
      }
    </style>
  </head>
  <body>
    <h1>Welcome</h1>
    <p>Click the button below to start the quiz!</p>

    <form action="quiz.jsp" method="get">
      <button type="submit" class="start-btn">Start Quiz</button>
    </form>

    The quiz data could go here
    <c:forEach var="quiz" items="${quizzes}">
      <div class="quiz">
        <h2>${quiz.title}</h2>
        <c:forEach var="question" items="${quiz.questions}">
          <div class="question">
            <p><strong>${question.questionText}</strong></p>
            <ul>
              <c:forEach var="option" items="${question.options}">
                <li>${option}</li>
              </c:forEach>
            </ul>
          </div>
        </c:forEach>
      </div>
    </c:forEach>
  </body>
</html>
