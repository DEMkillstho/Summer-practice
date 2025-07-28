package com.example.quizapp.service;

import com.example.quizapp.entity.Question;

import java.util.List;

public interface QuestionService {
    List<Question> findAllQuestions();
    void saveQuestion(Question question);
}
