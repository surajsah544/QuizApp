package com.example.quizApp;

public class Question {
    private String questionText;
    private String[] options;
    private String correctAnswer;

    public Question(String questionText, String[] options, String correctAnswer) {
        this.questionText = questionText;
        this.options = options;
        this.correctAnswer = correctAnswer;
    }

    public String getQuesText() {
        return questionText;
    }

    public String[] getOptions() {
        return options;
    }

    public String getAns() {
        return correctAnswer;
    }

    // Getters and Setters
}