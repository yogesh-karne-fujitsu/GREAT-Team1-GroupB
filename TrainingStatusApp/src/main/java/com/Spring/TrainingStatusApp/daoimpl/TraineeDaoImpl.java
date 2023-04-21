package com.Spring.TrainingStatusApp.daoimpl;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import com.Spring.TrainingStatusApp.bean.Trainee;
import com.Spring.TrainingStatusApp.dao.TraineeDao;



@Repository
public class TraineeDaoImpl extends JdbcDaoSupport implements TraineeDao {


	@Autowired
	DataSource dataSource;
	
	@PostConstruct
	private void intialize() {
		System.out.println("DAOimpl-traineee");
		setDataSource(dataSource);
	}
	
	@Override
	public int createNewTrainee(Trainee trainee, String tPath, String sPath, String tsPath)throws IOException {
	String sql="insert into tblmaster(emp_id,emp_mail,emp_name,emp_batch,tr_date,st_date,ed_date,"
			+ "course_id,course_name,approver_name,mail_srn,saba_srn,test_srn,test_score,rec_status) "
			+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,'U');";
	
	System.out.println("DAO Handling image1");
	
	return getJdbcTemplate().update(new PreparedStatementCreator() {
		
		@Override
		public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, trainee.getEmpId());
			ps.setString(2, trainee.getMailId());
			ps.setString(3, trainee.getEmpName());
			ps.setString(4, trainee.getBatch());
			ps.setString(5, trainee.getTrainDate());
			ps.setString(6, trainee.getSrDate());
			ps.setString(7, trainee.getEnDate());
			ps.setString(8, trainee.getCourseId());
			ps.setString(9, trainee.getCourseName());
			ps.setString(10, trainee.getApName());
			ps.setString(11, tPath);
			ps.setString(12, sPath);
			ps.setString(13, tsPath);
			ps.setString(14, trainee.getTestScore());
			return ps;
		}
	});
}

}
