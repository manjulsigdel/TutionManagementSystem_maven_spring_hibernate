/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.tutionmanagementproject.controller;

import com.leapfrog.tutionmanagementproject.dao.CourseDAO;
import com.leapfrog.tutionmanagementproject.entity.Course;
import com.leapfrog.tutionmanagementproject.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author Manjul Sigdel
 */
@Controller
@RequestMapping(value = "/courses")
public class CourseController {

    @Autowired
    CourseService courseService;

    @RequestMapping(method = RequestMethod.GET)
    public String showCourses(Model model) {

        model.addAttribute("allcourses", courseService.getAll());
        return "course/courses";
    }

    @RequestMapping(method = RequestMethod.GET, value = "add")
    public String addCourse(Model model) {
        model.addAttribute("course", new Course());
        return "course/addcourse";
    }

    @RequestMapping(method = RequestMethod.POST, value = "added")
    public String courseAdded(Model model, Course c) {

        courseService.insert(c);

        model.addAttribute("courseForm", c);

        return "redirect:/courses";
    }

    @RequestMapping(value = "edit/{id}", method = RequestMethod.GET)
    public String editCourse(@PathVariable("id") int id, Model model) {

        model.addAttribute("course", courseService.getById(id));
        return "course/editcourse";
    }

    @RequestMapping(method = RequestMethod.POST, value = "edit/updated")
    public String updateAdded(Model model, Course c) {
        //model.addAttribute("courseForm", c.getCourseId());
        courseService.update(c);
        model.addAttribute("courseForm", c);

        return "redirect:/courses";
    }

    @RequestMapping(method = RequestMethod.GET, value = "delete/{id}")

    public String deleteCourse(@PathVariable("id") int id) {
        // model.addAttribute("course_id",c.getCourseId());
        courseService.delete(id);
//        String result="";
//        if(courseService.delete(id)==true){
//            result="Course Deleted Successfully";
//        }else{
//            result="Not Deleted";
//        }
//        
        return "redirect:/courses";
    }

}
