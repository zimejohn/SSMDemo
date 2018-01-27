package com.zime.maven.test;

import static org.junit.Assert.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Random;
import java.util.UUID;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.zime.maven.dao.MajorMapper;
import com.zime.maven.dao.StudentMapper;
import com.zime.maven.entity.Major;
import com.zime.maven.entity.Student;
import com.zime.maven.service.MajorService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:applicationContext.xml"})
public class MapperTest {
	@Autowired
	private ApplicationContext applicationContext;
	@Autowired
	private MajorMapper majorMapper;
	@Autowired
	private StudentMapper studentMapper;
	@Autowired
	private SqlSession sqlSession;
	@Autowired
	private MajorService majorService;

	@Test
	public void test() {
		DataSource dataSource=  applicationContext.getBean(DataSource.class);
		System.out.println(dataSource);
	}
	@Test
	public void testAddMajor() {
	   majorMapper.insertSelective(new Major(null,"数控技术"));	
	   majorMapper.insertSelective(new Major(null,"机电一体化技术"));
	}
	
	@Test
	public void testAddStudent() throws Exception {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		sdf.setLenient(false);
		Student student=new Student(null, "zhangsan", "男", "zhangs@qq.com", "15867583243", sdf.parse("1988-9-10"), sdf.parse("2017-9-5"), 6);
		studentMapper.insertSelective(student);
	}
	
	@Test
	public void testAddStudents() throws Exception {
		StudentMapper mapper= sqlSession.getMapper(StudentMapper.class);
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		sdf.setLenient(false);
		Random random=new Random();
		for(int i=0;i<500;i++) {
			String stuName= UUID.randomUUID().toString().substring(0,5)+i;
			Student student=new Student(null, stuName, "男", stuName+"@qq.com", "15867583243", sdf.parse("1988-9-10"), sdf.parse("2017-9-5"), random.nextInt(6)+1);
			mapper.insertSelective(student);			
		}

	}
	@Test
	public void testGetMajors() {
		System.out.println(majorService.getAll());
	}

}
