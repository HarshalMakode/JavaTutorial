package com.example.servletnjsp;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.List;

@WebServlet("/upload")
public class Upload extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletFileUpload servletFileUpload = new ServletFileUpload(new DiskFileItemFactory());
        try {
            List<FileItem> multifiles = servletFileUpload.parseRequest(req);

            for(FileItem item : multifiles) {
                item.write(new File("src/main/webapp/Upload/" + item.getName()));
            }

            System.out.println("File uploaded successfully");
            resp.sendRedirect("welcome.jsp");

        } catch (FileUploadException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
