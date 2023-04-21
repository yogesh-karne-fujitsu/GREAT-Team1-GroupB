package com.Spring.TrainingStatusApp.dao;

import java.io.IOException;

import com.Spring.TrainingStatusApp.bean.Trainee;

public interface TraineeDao {

	int createNewTrainee(Trainee trainee,String tPath,String sPath,String tsPath) throws IOException;
}
