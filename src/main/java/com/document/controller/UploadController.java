package com.document.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;

@Controller
@RequestMapping("/file")
public class UploadController {

    @RequestMapping(value="/upload",method= RequestMethod.POST)
    @ResponseBody
    public String upload(MultipartFile file, HttpServletRequest request) throws IOException {
        String path = request.getSession().getServletContext().getRealPath("upload");  
        String fileName = file.getOriginalFilename();    
        File dir = new File(path,fileName);          
        if(!dir.exists()){  
            dir.mkdirs();  
        }  
       
        file.transferTo(dir);  
        return fileName;  
    }  
    
       @RequestMapping("/down")  
        public void down(HttpServletRequest request, HttpServletResponse response,String txtName) throws Exception{
           
            String fileName = request.getSession().getServletContext().getRealPath("upload")+txtName;
            
            InputStream bis = new BufferedInputStream(new FileInputStream(new File(fileName)));
              
            String filename = "下载文件.txt";
            
            filename = URLEncoder.encode(filename,"UTF-8");
            
            response.addHeader("Content-Disposition", "attachment;filename=" + filename);    
                
            response.setContentType("multipart/form-data");   
            
            BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());
            int len = 0;  
            while((len = bis.read()) != -1){  
                out.write(len);  
                out.flush();  
            }  
            out.close();  
        }  
}