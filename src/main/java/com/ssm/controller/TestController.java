package com.ssm.controller;

import com.ssm.po.Student;
import com.ssm.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class TestController {

    @Autowired
    TestService testService;

    @RequestMapping("jumpToIndex.html")
    public ModelAndView jumpToIndex() {
        ModelAndView modelAndView = new ModelAndView();
        List<Student> students = testService.queryAllStudents();
        modelAndView.addObject("students",students);
        modelAndView.setViewName("index");
        return modelAndView;
    }
}
