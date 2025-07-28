package com.example.quizapp.controller;

import com.example.quizapp.entity.Question;
import com.example.quizapp.service.QuestionService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping({"/quiz", "/quiz"})
public class QuizController {

    @Autowired
    private QuestionService questionService;

    @GetMapping("/start")
    public String startQuiz(Model model) {
        List<Question> questions = questionService.findAllQuestions();
        model.addAttribute("questions", questions);
        return "quiz";
    }

    @PostMapping("/submit")
    public String submitQuiz(HttpServletRequest request, Model model) {
        List<Question> questions = questionService.findAllQuestions();
        int score = 0;

        for (int i = 0; i < questions.size(); i++) {
            String userAnswer = request.getParameter("answers_" + i);
            if (userAnswer != null && userAnswer.equals(questions.get(i).getCorrectAnswer())) {
                score++;
            }
        }

        model.addAttribute("score", score);
        model.addAttribute("total", questions.size());

        return "result";
    }
}
