<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <title>Quiz Application</title>
    <style>
      body {
        font-family: Arial, sans-serif;
        margin: 20px;
        height: 100vh;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
      }
      h1 {
        color: #333;
      }
      a {
        text-decoration: none;
        padding: 1rem .75rem;
        color: white;
        background-color: #1b9538;
        border-radius: 8px;
      }
    </style>
  </head>
  <body>
    <h1>Welcome</h1>
    <a href="/QuizApp/quizes">Browse Quizes</a>
  </body>
</html>
