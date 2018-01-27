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
	//��ȡ����ѧ����Ϣ
	public List<Student> getAll(){
		StudentExample studentExample=new StudentExample();
		studentExample.setOrderByClause("id");
		return studentMapper.selectByExampleWithMajor(studentExample);
	}
	//��ȡһ��ѧ����Ϣ
	public Student getStudent(Integer id) {
		return studentMapper.selectByPrimaryKeyWithMajor(id);
	}
	//��������Ƿ����
	public boolean validateName(String name) {
		StudentExample studentExample=new StudentExample();
		Criteria criteria= studentExample.createCriteria();
		criteria.andNameEqualTo(name);
		long count=studentMapper.countByExample(studentExample);		
		return count==0;
	}
	//���ѧ��
	public void saveStudent(Student student) {
		studentMapper.insertSelective(student);
	}
	//����ѧ����Ϣ
	public void updateStudent(Student student) {
		studentMapper.updateByPrimaryKeySelective(student);
	}
	//ɾ������ѧ��
	public void deleteStudent(Integer id) {
		studentMapper.deleteByPrimaryKey(id);
	}
	//����ɾ��
	public void deleteStudentBatch(List<Integer> ids) {
		StudentExample studentExample=new StudentExample();
		Criteria criteria= studentExample.createCriteria();
		criteria.andIdIn(ids);
		studentMapper.deleteByExample(studentExample);
	}
	
}
