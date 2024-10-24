<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        margin-bottom: 20px;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
      }
      .question {
        margin: 10px 0;
      }
      .submit-btn {
        padding: 10px 20px;
        background-color: #4caf50;
        color: white;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
      }
      .submit-btn:hover {
        background-color: #45a049;
      }
    </style>
  </head>
  <body>
    <h1>Math Quiz</h1>
    <div class="quiz">
      <form action="quiz.jsp" method="post">
        <div class="question">
          <p><strong>What is 2 + 2?</strong></p>
          <ul>
            <li>
              <input type="radio" id="option1" name="answer" value="3" />
              <label for="option1">3</label>
            </li>
            <li>
              <input type="radio" id="option2" name="answer" value="4" />
              <label for="option2">4</label>
            </li>
            <li>
              <input type="radio" id="option3" name="answer" value="5" />
              <label for="option3">5</label>
            </li>
            <li>
              <input type="radio" id="option4" name="answer" value="6" />
              <label for="option4">6</label>
            </li>
          </ul>
        </div>
        <button type="submit" class="submit-btn">Submit Answer</button>
      </form>
    </div>

    <% // Handle form submission and display result 
    String selectedAnswer = request.getParameter("answer"); 
    if (selectedAnswer != null) { 
        int correctAnswer = 4; // 2 + 2 = 4 
        if (Integer.parseInt(selectedAnswer) == correctAnswer) { 
            out.println("<p style='color: green'><strong>Correct! The answer is 4.</strong></p>");
        } else { 
            out.println("<p style='color: red'><strong>Incorrect. The correct answer is 4.</strong></p>"); 
        } 
    } %>
  </body>
</html>
