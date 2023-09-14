package com.melon.controller.qna;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
@RequestMapping("/qna")
public class QnaController {
    @GetMapping
    private String qna(){
        return "qna/qna";
    }

    @GetMapping("/writeForm")
    private String qnaWrite(){
        return "qna/qna_write";
    }
}
