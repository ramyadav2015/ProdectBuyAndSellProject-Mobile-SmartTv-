package com.service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.dao.EditDao;
import com.entity.ProdectBean;

@Service
public class EditProdectService {

    @Autowired
    private EditDao dao;

    public int editservice(ProdectBean bean, MultipartFile file) throws IOException {
        
        String fileName = null;
        
        //Save image
        if (!file.isEmpty()) {
            fileName = file.getOriginalFilename();
            String uploadDir = "C:\\Users\\DELL\\eclipse-workspace-Spring-mvc\\ProdectBuyAndSellProject\\src\\main\\webapp\\WEB-INF\\resources\\photos\\";
            String filePath = uploadDir + fileName;
           
            File dir = new File(uploadDir);
            if (!dir.exists()) {
                dir.mkdirs();
            }
            
            // Write the uploaded file content to the specified location
            Path path = Paths.get(filePath);           
            Files.write(path, file.getBytes());
            // Set image name
            bean.setImage(fileName);
        }        
       
        System.out.println(fileName);
        
        // Call DAO method to update the entity in database
        int result = dao.editDaoMethod(bean);

        return result;
    }
}
