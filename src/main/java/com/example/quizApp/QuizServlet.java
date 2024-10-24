package com.example.quizApp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/")
public class QuizServlet extends HttpServlet {
    // private  quizzes;

    // @Override
    // public void init() throws ServletException {
        
    // }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Quiz> quizzes = new ArrayList<>();
        Quiz quiz = new Quiz("Sample Quiz");
        quiz.addQuestion(new Question("What is 2 + 2?", new String[]{"3", "4", "5"}, "4"));
        quiz.addQuestion(new Question("What is 2 + 3?", new String[]{"3", "4", "5"}, "5"));
        quiz.addQuestion(new Question("What is 4 + 2?", new String[]{"3", "4", "5"}, "6"));
        quizzes.add(quiz);
        request.setAttribute("quizzes", quizzes);
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}