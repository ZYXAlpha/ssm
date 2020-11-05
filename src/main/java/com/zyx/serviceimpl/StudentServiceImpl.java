package com.zyx.serviceimpl;

import com.zyx.bean.Student;
import com.zyx.dao.StudentDao;
import com.zyx.service.StudentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class StudentServiceImpl implements StudentService {
    /*引用类型自动注入*/
    @Resource
    private StudentDao studentDao;
    @Override
    public int addStudent(Student student) {
        System.out.println("studentDao:"+studentDao);
        int nums=studentDao.insertStudent(student);
        return nums;
    }

    @Override
    public List<Student> findStudents() {
        List<Student> list=studentDao.selectStudents();
        return list;
    }
}
