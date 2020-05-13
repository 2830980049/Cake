package com.edu.cake.untils;

import com.edu.cake.entity.Cake;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class FileUploads {
    public static Cake uploadFile(HttpServletRequest req) throws ServletException, IOException {
        Cake cake = new Cake();
        DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
        Map<String, String> map = new HashMap<String, String>();
        map.put("id","-1");
        ServletFileUpload fileUpload = new ServletFileUpload(diskFileItemFactory);
        try {
            List<FileItem> list = fileUpload.parseRequest(req);
            for (FileItem fileItem : list) {
                // 解析request请求，返回List集合，List集合存放FileItem对象
                String url = null;
                String uuidFileName = null;
                if (fileItem.isFormField()) {
                    String name = fileItem.getFieldName();
                    String value = fileItem.getString("UTF-8");
                    map.put(name, value);
                }
                String fileName = fileItem.getName();
                if(fileName != null && !"".equals(fileName)) {
                    uuidFileName = getFileName(fileName);
                    InputStream is = fileItem.getInputStream();
                    String path = req.getSession().getServletContext().getRealPath("/");
                    path = path.replace(path.substring(path.indexOf("target")), "src\\main\\webapp") + "\\download\\images\\";
                    System.out.println(path);
                    System.out.println(path);
                    url = path + uuidFileName;

                    OutputStream os = new FileOutputStream(url);
                    int len = 0;
                    byte[] b = new byte[1024];
                    while ((len = is.read(b)) != -1)
                        os.write(b, 0, len);
                    is.close();
                    os.close();
                }
                System.out.println(map);
                if (url != null){
                    map.put("path", url);
                    map.put("filename", uuidFileName);
                }
            }
        } catch (FileUploadException e) {
            e.printStackTrace();
        }
        cake.setId(Integer.parseInt(map.get("id")));
        cake.setTitle(map.get("title"));
        cake.setCid(Integer.parseInt(map.get("cid")));
        cake.setImage_path(map.get("filename"));
        cake.setPath(map.get("path"));
        cake.setPrice(Double.parseDouble(map.get("price")));
        cake.setTaste(map.get("taste"));
        cake.setSweetness(Integer.parseInt(map.get("sweetness")));
        cake.setWeight(Double.parseDouble(map.get("weight")));
        cake.setSize(Integer.parseInt(map.get("size")));
        cake.setMaterial(map.get("material"));
        cake.setStatus(map.get("status"));
        return cake;
    }

    public static String getFileName(String fileName){
        int index = fileName.lastIndexOf(".");
        String exName = fileName.substring(index);
        String uuidFileName = UUID.randomUUID().toString().replace("-","")+exName;
        return uuidFileName;
    }
}
