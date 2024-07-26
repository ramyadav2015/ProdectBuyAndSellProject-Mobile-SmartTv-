package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.entity.Admin_login_bean;

public class RowMapperAdmin implements RowMapper<Admin_login_bean> {
    
    @Override
    public Admin_login_bean mapRow(ResultSet rs, int rowNum) throws SQLException {
       
        Admin_login_bean admin = new Admin_login_bean();
        
        admin.setId(rs.getInt("id"));
        admin.setUsername(rs.getString("username"));
        admin.setAdmin_password(rs.getString("admin_password"));
        admin.setEmail(rs.getString("email"));
        admin.setFirst_name(rs.getString("first_name"));
        admin.setLast_name(rs.getString("last_name"));
        admin.setAddress(rs.getString("address"));
        
        return admin;
    }
}
