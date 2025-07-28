package com.example.quizapp.service;

import com.example.quizapp.entity.Question;
import com.example.quizapp.repository.QuestionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QuestionServiceImpl implements QuestionService {

    @Autowired
    private QuestionRepository questionRepository;

    @Override
    public List<Question> findAllQuestions() {
        return questionRepository.findAll();
    }

    @Override
    public void saveQuestion(Question question) {
        questionRepository.save(question);
    }
}
