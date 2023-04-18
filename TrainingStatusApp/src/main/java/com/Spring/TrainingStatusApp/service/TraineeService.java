package com.Spring.TrainingStatusApp.service;

import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

import com.Spring.TrainingStatusApp.bean.Trainee;

public interface TraineeService {

	int createNewTrainee(Trainee trainee,MultipartFile esrn,MultipartFile ssrn,MultipartFile tsrn) throws IOException;
}
