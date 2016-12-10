package br.com.sistemafjm.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    /**
     * Leva para a home do sistema //
     */
    @RequestMapping("/")
    public ModelAndView index() {
        ModelAndView mv = new ModelAndView("/home");
        System.out.println("Entrando na home do Sistema");

        return mv;
    }

}
