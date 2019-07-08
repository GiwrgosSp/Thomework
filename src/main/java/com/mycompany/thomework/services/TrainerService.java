/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.thomework.services;

import com.mycompany.thomework.daos.TrainerDao;
import com.mycompany.thomework.entities.Trainer;
import java.util.List;

/**
 *
 * @author George
 */
public class TrainerService {

    public List<Trainer> getAllTrainers() {

        TrainerDao tr = new TrainerDao();
        List<Trainer> tl = tr.getAllTrainers();
        return tl;
    }

    public boolean addTrainer(Trainer t) {
        TrainerDao td = new TrainerDao();
        return td.addTrainer(t);
    }

}
