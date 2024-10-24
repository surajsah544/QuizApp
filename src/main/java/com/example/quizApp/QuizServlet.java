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
    private List<Quiz> quizzes = new ArrayList<>();

    @Override
    public void init() throws ServletException {
        Quiz quiz = new Quiz("Sample Quiz");
        quiz.addQuestion(new Question("What is 2 + 2?", new String[] { "3", "4", "5" }, "4"));
        quiz.addQuestion(new Question("What is 2 + 3?", new String[] { "3", "4", "5" }, "5"));
        quiz.addQuestion(new Question("What is 4 + 2?", new String[] { "3", "4", "5" }, "6"));
        quizzes.add(quiz);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("eval".equals(action)) {
            evaluateAnswers(request, response);
        } else {
            // Optionally handle other actions or show an error
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid action");
        }
    }

    public void evaluateAnswers(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        Quiz quiz = quizzes.get(Integer.parseInt(request.getParameter("quiz")));

        List<Question> questions = quiz.getQuestions();
        int correct = 0;
        for (int i = 0; i < questions.size(); i++) {
            String ans = request.getParameter("option_" + i);
            String correctAns = questions.get(i).getAns();
            if (correctAns.equals(ans)) correct++;
        }

        String redirectionUrl = "quizes?id=" + request.getParameter("quiz") +
                "&correct=" + correct +
                "&total=" + questions.size();

        response.sendRedirect(redirectionUrl);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        if (request.getParameter("id") != null) {
            int id = Integer.parseInt(request.getParameter("id"));
            request.setAttribute("quiz", quizzes.get(id));
            request.setAttribute("quizId", id);
            request.getRequestDispatcher("/quiz.jsp").forward(request, response);
        }

        request.setAttribute("quizzes", quizzes);
        request.getRequestDispatcher("/quizes.jsp").forward(request, response);
    }
}