package com.Spring.TrainingStatusApp.serviceimpl;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;

import com.Spring.TrainingStatusApp.bean.Trainee;
import com.Spring.TrainingStatusApp.dao.TraineeDao;
import com.Spring.TrainingStatusApp.service.TraineeService;

public class TraineeImpl implements TraineeService {
	
	
	private String currentDirectory = System.getProperty("user.dir");
	private final String MAIL_FILE_PATH = "\\images\\sabamailImg\\";
	private final String PERCIPEO_FILE_PATH = "\\images\\percipioImg\\";
	private final String TEST_SCORE_FILE_PATH = "\\images\\testscoreImg\\";


	@Autowired
	TraineeDao traineeDao;


	@Override
	public int createNewTrainee(Trainee trainee, MultipartFile esrn, MultipartFile ssrn,
			MultipartFile tsrn) throws IOException {
		String mailTargetPath = saveFile(MAIL_FILE_PATH, esrn, trainee);
		String percipeoTargetPath = saveFile(PERCIPEO_FILE_PATH, tsrn, trainee);
		String testScoreTargetPath = saveFile(TEST_SCORE_FILE_PATH, tsrn, trainee);

		return traineeDao.createNewTrainee(trainee, mailTargetPath, percipeoTargetPath, testScoreTargetPath);
	}

	private String saveFile(String savingfilePath, MultipartFile fileToSave, Trainee trainee) throws IOException {
		String targetPath = currentDirectory.concat("\\src\\main\\webapp").concat(savingfilePath);
		try (InputStream inputstream = fileToSave.getInputStream()) {
			String extension = getFileExtension(fileToSave.getOriginalFilename());
			Path path = Paths.get(targetPath);
			Path filePath = path.resolve(trainee.getEmpId().concat("_").concat(trainee.getCourseId()).concat(extension));
			Files.copy(inputstream, filePath, StandardCopyOption.REPLACE_EXISTING);
			return savingfilePath.concat(trainee.getEmpId().concat("_").concat(trainee.getCourseId()).concat(extension));
		} catch (IOException ioe) {
			throw new IOException("Error saving Mail screenshot " + targetPath, ioe);
		}
	}

		private String getFileExtension(String fileName) {
			int extensionStartIndex = fileName.lastIndexOf(".");
			return fileName.substring(extensionStartIndex, fileName.length());
		}

}
