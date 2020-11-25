package com.desert.demo.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ResourceUtils;
import org.springframework.web.multipart.MultipartFile;

import com.desert.demo.config.UpLoadFileUtils;
import com.desert.demo.dto.DTOGoods;
import com.desert.demo.mapper.GoodsMapper;

@Service
public class ServiceGoodsImpl implements ServiceGoods {
    @Autowired
    GoodsMapper mapper;
    @Autowired
    DTOGoods goods;

//    @Override
//    public int insertGoods(HttpServletRequest req, MultipartFile[] file) throws IOException {
//
//        String uploadPath=req.getSession().getServletContext().getRealPath("/").concat("resources");
//
//        for(MultipartFile multipartFile:file) {
//            System.out.println("-------------------------------");
//            System.out.println("upload file name : "+multipartFile.getOriginalFilename());
//            System.out.println("upload file size : "+multipartFile.getSize());
//            File save=new File(url,multipartFile.getOriginalFilename());
//            multipartFile.transferTo(save);
//            String name=multipartFile.getOriginalFilename();
//            goods.setImgName(name);
//            goods.setImgUrl(url);
//        }
//        goods.setCategory(req.getParameter("category"));
//        goods.setName(req.getParameter("name"));
//        int price=Integer.parseInt(req.getParameter("price"));
//        goods.setPrice(price);
//        goods.setContents(req.getParameter("contents"));
////        goods.setImgName();
////        goods.setImgUrl();
//        int result=mapper.insertGoods(goods);
//        return result;
//    }

    @Override
    public int insertGoods(HttpServletRequest req, MultipartFile file) throws IOException {


        String uploadPath= ResourceUtils.getFile("classpath:static/upload/").toPath().toString();
        uploadPath=uploadPath.replace("\\","/");
        uploadPath=uploadPath.replace("/bin/main/statc","/src/main/resources/static");

        //이미지 업로드 폴더 설정. ->> /uploadPath/imgUpload
        String ymdPath= UpLoadFileUtils.calcPath(uploadPath);
        String fileName=null;
        //input에 파일이 업로드되어 있다면
        if(file.getOriginalFilename()!=null&&!file.getOriginalFilename().equals("")){
            fileName=UpLoadFileUtils.fileUpload(uploadPath,file.getOriginalFilename(),file.getBytes(),ymdPath);
            // url에 원본 파일 경로 + 파일명 저장
//            goods.setImgUrl(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
//            // Img에 썸네일 파일 경로 + 썸네일 파일명 저장
//            goods.setImgName(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
            String img=(File.separator+"upload"+ymdPath+File.separator+fileName);
            img=img.replace("\\","/");
            String imgS=(File.separator+ "upload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
            imgS.replace("\\","/");
            goods.setImg(img);
            goods.setImgS(imgS);

        } else {  // 첨부된 파일이 없으면
            fileName = File.separator + "images" + File.separator + "none.jpg";
            // 미리 준비된 none.png파일을 대신 출력함

            goods.setImg(fileName);
            goods.setImgS(fileName);
        }
        System.out.println("fileName : "+fileName);

        goods.setCategory(req.getParameter("category"));
        goods.setName(req.getParameter("name"));
        int price=Integer.parseInt(req.getParameter("price"));
        goods.setPrice(price);
        goods.setContents(req.getParameter("contents"));

        int result=mapper.insertGoods(goods);
        return result;
    }

    @Override
    public int deleteGoods(int idx) {
        return mapper.deleteGoods(idx);
    }

    @Override
    public int updateGoods(HttpServletRequest req,MultipartFile file) throws IOException {
        String uploadPath= ResourceUtils.getFile("classpath:static/upload/").toPath().toString();
        uploadPath=uploadPath.replace("\\","/");
        uploadPath=uploadPath.replace("/bin/main/statc","/src/main/resources/static");
        String ymdPath= UpLoadFileUtils.calcPath(uploadPath);
        String fileName=null;
        if(file.getOriginalFilename()!=null&&!file.getOriginalFilename().equals("")){
            fileName=UpLoadFileUtils.fileUpload(uploadPath,file.getOriginalFilename(),file.getBytes(),ymdPath);
            String img=(File.separator+"upload"+ymdPath+File.separator+fileName);
            img=img.replace("\\","/");
            String imgS=(File.separator+ "upload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
            imgS.replace("\\","/");
            File img_upload=new File(img,fileName);
            File imgS_upload=new File(imgS,fileName);
            
            file.transferTo(img_upload);
            file.transferTo(imgS_upload);
            goods.setImg(img);
            goods.setImgS(imgS);

        } else {  // 첨부된 파일이 없으면
            fileName = File.separator + "images" + File.separator + "none.jpg";

            goods.setImg(fileName);
            goods.setImgS(fileName);
        }
        System.out.println("fileName : "+fileName);

        goods.setCategory(req.getParameter("category"));
        goods.setName(req.getParameter("name"));
        int price=Integer.parseInt(req.getParameter("price"));
        goods.setPrice(price);
        goods.setContents(req.getParameter("contents"));

        return mapper.updateGoods(goods);

    }

    @Override
    public DTOGoods getInfoGoods(int idx) {
        return mapper.getInfoGoods(idx);
    }

    @Override
    public int goodsCount() {
        return mapper.goodsCheck();
    }

    @Override
    public ArrayList<DTOGoods> goodsList() {
        ArrayList<DTOGoods>list=mapper.goodsList();
        return list;
    }

    @Override
    public ArrayList<DTOGoods> goodsSearch(String search) {
        ArrayList<DTOGoods>result=mapper.searchGoods(search);
        return result;
    }

    //------------------------------------------다중파일업로드 array로 받은거 mapper에 넣으려면 String으로 변환해야해서 수정해야함

//    public int insertGoods2(MultipartHttpServletRequest req) throws IOException {
//        List<MultipartFile> fileList=req.getFiles("file");
//        String uploadPath= ResourceUtils.getFile("classpath:static/upload/").toPath().toString();
//        uploadPath=uploadPath.replace("\\","/");
//        uploadPath=uploadPath.replace("/bin/main/statc","/src/main/resources/static");
//
//        //이미지 업로드 폴더 설정. ->> /uploadPath/imgUpload
//        String ymdPath= UpLoadFileUtils.calcPath(uploadPath);
//        String fileName=null;
//        //input에 파일이 업로드되어 있다면
//        ArrayList<String> img = new ArrayList<>();
//        ArrayList<String> imgS = new ArrayList<>();
//
//        for(MultipartFile file : fileList) {
//                fileName = UpLoadFileUtils.fileUpload(uploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
//
//                String img_str = (File.separator + "upload" + ymdPath + File.separator + fileName);
//                img_str = img_str.replace("\\", "/");
//                String imgS_str = (File.separator + "upload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
//                imgS_str.replace("\\", "/");
//                img.add(img_str);
//                imgS.add(imgS_str);
//
//            }
//
//        goods.setImg(img);
//        goods.setImgS(imgS);
//
//        goods.setCategory(req.getParameter("category"));
//        goods.setName(req.getParameter("name"));
//        int price=Integer.parseInt(req.getParameter("price"));
//        goods.setPrice(price);
//        goods.setContents(req.getParameter("contents"));
//
//        int result=mapper.insertGoods(goods);
//        return result;
//    }
}
