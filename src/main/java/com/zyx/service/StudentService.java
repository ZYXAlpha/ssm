package com.zyx.service;

import com.zyx.bean.Student;

import java.util.List;

public interface StudentService {
    public int addStudent(Student student);
    public List<Student> findStudents();
}
