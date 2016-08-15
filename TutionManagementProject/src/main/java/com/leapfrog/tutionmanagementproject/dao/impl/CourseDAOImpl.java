/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.tutionmanagementproject.dao.impl;

import com.leapfrog.tutionmanagementproject.dao.CourseDAO;
import com.leapfrog.tutionmanagementproject.entity.Course;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Manjul Sigdel
 */
@Repository(value = "CourseDAO")
public class CourseDAOImpl implements CourseDAO{
    
    @Autowired
    private SessionFactory sessionFactory;
    
    private Session session;
    
    private Transaction trans;
    
    @Override
    public List<Course> getAll() {
        session=sessionFactory.openSession();
        List<Course> courseList = session.getNamedQuery("Course.findAll").list();
        //session.close();
        return courseList;
    }

    @Override
    public Course getById(int id) {
        for(Course c:getAll()){
            if(c.getCourseId()==id){
                return c;
            }
        }
        return null;
    }

    @Override
    public int insert(Course c) {
        session=sessionFactory.openSession();
        trans = session.beginTransaction();
        session.saveOrUpdate(c);
        trans.commit();
        return c.getCourseId();
    }

    @Override
    public int update(Course c) {
        session=sessionFactory.openSession();
        trans = session.beginTransaction();
        session.update(c);
        trans.commit();
        session.flush();
        session.close();
        return c.getCourseId();
        
    }
    @Override
    public boolean delete(int id) {
      
        Course c= getById(id);
        
        if(c!=null){
            session.delete(c);
            session.flush();
            session.close();
            //trans.commit();
            return true;
        }
        
        return false;
    }
    
}
