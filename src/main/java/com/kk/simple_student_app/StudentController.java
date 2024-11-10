package com.kk.simple_student_app;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class StudentController {

    @Autowired
    private StudentRepo studentRepo;

    @RequestMapping("/getstudents")
    public List<Student> getStudents() {
        return studentRepo.findAll();
    }

    @RequestMapping("/savestudents")
    public List<Student> saveStudents() {

        List<Student> students = List.of(
                new Student("abhi", 21),
                new Student("bana", 22),
                new Student("cana", 23));
        studentRepo.saveAll(students);
        return students;
    }

    @RequestMapping("/addstudent")
    public void addStudent() {
        Student student = new Student("dane", 24);
        studentRepo.save(student);
    }
}
