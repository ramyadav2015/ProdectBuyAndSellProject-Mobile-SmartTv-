package com.service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.dao.SellDaoClass;
import com.entity.ProdectBean;

@Component
public class SellServiceClass {
	
	@Autowired
	SellDaoClass daoClass;
	
	public int sellprodect(ProdectBean bean,MultipartFile file) {
		
		String fileName=null;
		
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
            try {
				Files.write(path, file.getBytes());
			} catch (IOException e) {
				
				e.printStackTrace();
			}
            // Set image name
            bean.setImage(fileName);
        }        
       
      
        
        
        // Call DAO method to update the entity in database		
		int result = daoClass.sellDao(bean);
		return result;
	}

}
