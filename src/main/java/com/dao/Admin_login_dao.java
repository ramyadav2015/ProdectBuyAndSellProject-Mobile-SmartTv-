package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.entity.Admin_login_bean;
import com.entity.User_register_bean;

@Repository
public class Admin_login_dao {
    
    @Autowired
    JdbcTemplate template;
    
    public List<Admin_login_bean> adminDao() {
        // Read the value in the admin database
        String read = "select * from admin";
      
        
        // Using the query method to get a list of objects
        List<Admin_login_bean> fatch = template.query(read, new RowMapperAdmin());
        
        return fatch;
    }
}
