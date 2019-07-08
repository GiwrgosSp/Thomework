/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.thomework.controllers;

import com.mycompany.thomework.entities.Trainer;
import com.mycompany.thomework.services.TrainerService;
import javax.validation.Valid;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author George
 */
@Controller
@RequestMapping("/")
public class TrainersController {

    @RequestMapping(method = RequestMethod.GET)
    public String getAllTrainers(ModelMap model) {
        return "index";
    }
    
    
    TrainerService tServ = new TrainerService();
    @RequestMapping(value = "/trainers", method = RequestMethod.GET)
    public String getTrainers(ModelMap model) {
        model.addAttribute("greeting", "Trainers").addAttribute("list", tServ.getAllTrainers());
        return "trainers";
    }
    
    @RequestMapping(value = "/addTrainer", method = RequestMethod.GET)
    public String addTrainer(ModelMap model) {
        model.addAttribute("greeting", "Trainers").addAttribute("list", tServ.getAllTrainers());
        return "addTrainer";
    }

    @RequestMapping(value = "/addTrainerAfter", method = RequestMethod.POST)
    public String addTrainerAfter(ModelMap model,@RequestParam(value="firstName") String firstName,
            @RequestParam(value="lastName") String lastName,@RequestParam(value="subject") String subject) {
        Trainer t= new Trainer(firstName,lastName,subject);
        tServ.addTrainer(t);
        return "index";
    }
}
