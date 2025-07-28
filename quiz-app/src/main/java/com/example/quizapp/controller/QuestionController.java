package com.example.quizapp.controller;

import com.example.quizapp.entity.Question;
import com.example.quizapp.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/question")
public class QuestionController {

    @Autowired
    private QuestionService questionService;

    @GetMapping("/add")
    public String showAddForm(Question question) {
        return "add-question";
    }

    @PostMapping("/add")
    public String addQuestion(@ModelAttribute Question question) {
        questionService.saveQuestion(question);
        return "redirect:/question/list";
    }

    @GetMapping("/list")
    public String listQuestions(org.springframework.ui.Model model) {
        model.addAttribute("questions", questionService.findAllQuestions());
        return "list-questions";
    }
}
