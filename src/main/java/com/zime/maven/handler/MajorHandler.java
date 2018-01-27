package com.zime.maven.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zime.maven.entity.Major;
import com.zime.maven.service.MajorService;
import com.zime.maven.util.Msg;

@Controller
public class MajorHandler {
	@Autowired
	private MajorService  majorService;
	
	@ResponseBody
	@RequestMapping("/majors")
	public Msg getMajors() {
		List<Major> majors= majorService.getAll();
		return Msg.success().add("majors", majors);
	}

}
