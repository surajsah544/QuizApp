package com.example.quizApp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/quizes")
public class QuizServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Quiz> quizzes = new ArrayList<>();
        Quiz quiz = new Quiz("Sample Quiz");
        quiz.addQuestion(new Question("What is 2 + 2?", new String[]{"3", "4", "5"}, "4"));
        quiz.addQuestion(new Question("What is 2 + 3?", new String[]{"3", "4", "5"}, "5"));
        quiz.addQuestion(new Question("What is 4 + 2?", new String[]{"3", "4", "5"}, "6"));
        quizzes.add(quiz);


        if (request.getParameter("id") != null) {
            int id = Integer.parseInt(request.getParameter("id"));
            request.setAttribute("quiz", quizzes.get(id));
            request.getRequestDispatcher("/quiz.jsp").forward(request, response);
        }
        
        request.setAttribute("quizzes", quizzes);
        request.getRequestDispatcher("/quizes.jsp").forward(request, response);
    }
}