package com.zime.maven.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zime.maven.dao.StudentMapper;
import com.zime.maven.entity.Student;
import com.zime.maven.entity.StudentExample;
import com.zime.maven.entity.StudentExample.Criteria;

@Service
public class StudentService {
	@Autowired
    private StudentMapper studentMapper;
	//获取所有学生信息
	public List<Student> getAll(){
		StudentExample studentExample=new StudentExample();
		studentExample.setOrderByClause("id");
		return studentMapper.selectByExampleWithMajor(studentExample);
	}
	//获取一个学生信息
	public Student getStudent(Integer id) {
		return studentMapper.selectByPrimaryKeyWithMajor(id);
	}
	//检测姓名是否可用
	public boolean validateName(String name) {
		StudentExample studentExample=new StudentExample();
		Criteria criteria= studentExample.createCriteria();
		criteria.andNameEqualTo(name);
		long count=studentMapper.countByExample(studentExample);		
		return count==0;
	}
	//添加学生
	public void saveStudent(Student student) {
		studentMapper.insertSelective(student);
	}
	//更新学生信息
	public void updateStudent(Student student) {
		studentMapper.updateByPrimaryKeySelective(student);
	}
	//删除单个学生
	public void deleteStudent(Integer id) {
		studentMapper.deleteByPrimaryKey(id);
	}
	//批量删除
	public void deleteStudentBatch(List<Integer> ids) {
		StudentExample studentExample=new StudentExample();
		Criteria criteria= studentExample.createCriteria();
		criteria.andIdIn(ids);
		studentMapper.deleteByExample(studentExample);
	}
	
}
