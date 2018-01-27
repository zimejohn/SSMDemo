package com.zime.maven.handler;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zime.maven.entity.Student;
import com.zime.maven.service.StudentService;
import com.zime.maven.util.Msg;

@Controller
public class StudentHandler {
	@Autowired
    private StudentService studentService;
	
	@ResponseBody
	@RequestMapping(value="/stu/{ids}", method=RequestMethod.DELETE)
	public Msg delete(@PathVariable("ids") String ids) {
		if(ids.contains(",")) {
			String[] strIds= ids.split(",");
			List<Integer> stuIds= new ArrayList<Integer>();
			
			for(String s: strIds) {
				stuIds.add(Integer.parseInt(s));
			}
			studentService.deleteStudentBatch(stuIds);
			
		}else {
			Integer id=Integer.parseInt(ids);
			studentService.deleteStudent(id);
		}
	
		return Msg.success();
	}
	
	@ResponseBody
	@RequestMapping(value="/stu/{id}", method=RequestMethod.GET)
	public Msg getStudent(@PathVariable("id")Integer id) {
		Student student=studentService.getStudent(id);
		return Msg.success().add("student", student);
	}
	
	@ResponseBody
	@RequestMapping("/checkName")
	public Msg checkName(@RequestParam("stuName") String name) {
		String regxName="(^[a-zA-Z0-9_-]{6,16}$)|(^[\\u2E80-\\u9FFF]{2,8})";
		if(!name.matches(regxName)) {
			return Msg.fail().add("va_name", "����ֻ����2~8λ�ĺ��ֻ�6-16λ���ַ�");
		}
		
		boolean flag=studentService.validateName(name);
		if(flag) {
			return Msg.success().add("va_name", "��������");
		}else {
			return Msg.fail().add("va_name", "����������");
		}
		
		
	}
	
	@ResponseBody
	@RequestMapping(value="/stu/{id}", method=RequestMethod.PUT)
	public Msg updateStudent(@Valid Student student, BindingResult result) {
		System.out.println(student);
		if(result.getErrorCount()>0) {
			Map<String, Object> errors=new HashMap<String,Object>();
			for(FieldError error :result.getFieldErrors()) {
				System.out.println(error.getField()+":"+error.getDefaultMessage());
				errors.put(error.getField(), error.getDefaultMessage());
			}
			return Msg.fail().add("errors", errors);
		}
         try {
			studentService.updateStudent(student);
			return Msg.success();
		} catch (Exception e) {
			return Msg.fail().add("errors", e.getMessage()); 
		}
         
	}
	
	
	@ResponseBody
	@RequestMapping(value="/stu", method=RequestMethod.POST)
	public Msg save(@Valid Student student, BindingResult result) {
		
		if(result.getErrorCount()>0) {
			Map<String, Object> errors=new HashMap<String,Object>();
			for(FieldError error :result.getFieldErrors()) {
				System.out.println(error.getField()+":"+error.getDefaultMessage());
				errors.put(error.getField(), error.getDefaultMessage());
			}
			return Msg.fail().add("errors", errors);
		}
         try {
			studentService.saveStudent(student);
			return Msg.success();
		} catch (Exception e) {
			return Msg.fail().add("errors", e.getMessage()); 
		}
         
	}
	
//	@InitBinder
//	public void initBinder(WebDataBinder binder) {
//		SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd");
//		dateFormat.setLenient(false);  //2017-2-31
//		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
//	}	
	
	@ResponseBody
	@RequestMapping("/students")
	public Msg getStudentsWithJSON(@RequestParam(value="pn",defaultValue="1") Integer pageNum) {
		//�ڲ�ѯ֮ǰ���þ�̬������������ʼҳ��ҳ���С
		PageHelper.startPage(pageNum, 8);  //pageSizeÿҳҪ��ʾ�ļ�¼����
		//startPage��������ŵĲ�ѯ���Ƿ�ҳ��ѯ
		List<Student> students=studentService.getAll();
		//ʹ��PageInfo��װ��ѯ��Ľ��������pageInfo����map��
		PageInfo<Student> pageInfo=new PageInfo<Student>(students,5);
		return Msg.success().add("page", pageInfo);
	}
	
//	@RequestMapping("/students")
//	public String list(Map<String, Object> map) {
//		map.put("students", studentService.getAll());
//		return "list";
//	}
	
	//@RequestMapping("/students")
	public String list(@RequestParam(value="pn",defaultValue="1") Integer pageNum,Map<String, Object> map) {
		//�ڲ�ѯ֮ǰ���þ�̬������������ʼҳ��ҳ���С
		PageHelper.startPage(pageNum, 8);  //pageSizeÿҳҪ��ʾ�ļ�¼����
		//startPage��������ŵĲ�ѯ���Ƿ�ҳ��ѯ
		List<Student> students=studentService.getAll();
		//ʹ��PageInfo��װ��ѯ��Ľ��������pageInfo����map��
		PageInfo<Student> pageInfo=new PageInfo<Student>(students,5);
		map.put("page", pageInfo);
		return "list";
	}
}
