package com.document.controller;

import com.document.entity.Result;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("/file")
public class UploadController {

    @RequestMapping(value="/upload",method= RequestMethod.POST)
    @ResponseBody
    public Result upload(MultipartFile file, HttpServletRequest request) throws IOException {
        Result result = new Result();
        String path = request.getSession().getServletContext().getRealPath("upload");
        String fileName = file.getOriginalFilename();
        //时间格式化格式
        SimpleDateFormat simpleDateFormat =new SimpleDateFormat("yyyyMMddHHmmssSSS");
        //获取当前时间并作为时间戳
        String timeStamp=simpleDateFormat.format(new Date());
        //获取后缀名
        String sname = fileName.substring(fileName.lastIndexOf("."));
        String name = timeStamp+sname;
        File dir = new File(path,name);
        if(!dir.exists()){  
            dir.mkdirs();  
        }
        file.transferTo(dir);
        result.setSuccessMsg(name);
        return result;
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