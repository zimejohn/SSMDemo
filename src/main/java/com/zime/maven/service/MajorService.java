package com.zime.maven.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zime.maven.dao.MajorMapper;
import com.zime.maven.entity.Major;

@Service
public class MajorService {
	@Autowired
	private MajorMapper majorMapper;
	
	public List<Major> getAll(){
		return majorMapper.selectByExample(null);
	}
	
	public Major getMajor(Integer id) {
		return majorMapper.selectByPrimaryKey(id);
	}

}
