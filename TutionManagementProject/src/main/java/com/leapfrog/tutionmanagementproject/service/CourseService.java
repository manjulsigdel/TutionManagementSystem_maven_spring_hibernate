/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.tutionmanagementproject.service;

import com.leapfrog.tutionmanagementproject.entity.Course;
import java.util.List;

/**
 *
 * @author Manjul Sigdel
 */
public interface CourseService {
    List<Course> getAll();
    Course getById(int id);
    int insert(Course c);
    int update(Course c);
    boolean delete(int id);
}
