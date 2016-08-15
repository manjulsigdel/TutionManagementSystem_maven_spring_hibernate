/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.tutionmanagementproject.service.impl;

import com.leapfrog.tutionmanagementproject.dao.CourseDAO;
import com.leapfrog.tutionmanagementproject.entity.Course;
import com.leapfrog.tutionmanagementproject.service.CourseService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Manjul Sigdel
 */
@Service("courseService")
public class CourseServiceImpl implements CourseService {
    
    
    CourseDAO courseDAO;
    
    @Autowired
    public void setCourseDAO(CourseDAO courseDAO){
        this.courseDAO=courseDAO;
    }
    
    @Override
    public List<Course> getAll() {
        return courseDAO.getAll();
    }

    @Override
    public Course getById(int id) {
        return courseDAO.getById(id);
    }

    @Override
    public int insert(Course c) {
       return courseDAO.insert(c);
    }
    
    @Override
    public int update(Course c) {
       return courseDAO.update(c);
    }

    @Override
    public boolean delete(int id) {
        return courseDAO.delete(id);
    }
    
}
