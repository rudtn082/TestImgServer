<%--
  Created by IntelliJ IDEA.
  User: 경수
  Date: 2019-12-03
  Time: 오후 2:26
  To change this template use File | Settings | File Templates.
--%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="java.io.IOException" %>
<%@ page import="java.util.Enumeration" %>
<%@ page pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%
    System.out.println("1");
    //이미지를 저장할 경로 입력.
    String folderTypePath = "C:/Users/KyungSoo/Downloads";
    String name = new String();
    String fileName = new String();
    int sizeLimit = 10 * 1024 * 1024; // 5메가까지 제한 넘어서면 예외발생
    try {
      MultipartRequest multi = new MultipartRequest(request, folderTypePath, sizeLimit, new DefaultFileRenamePolicy());
      Enumeration files = multi.getFileNames();

      System.out.println("22");
      System.out.println(files);
      //파일 정보가 있다면
      if (files.hasMoreElements()) {
        System.out.println("111");
        name = (String) files.nextElement();
        fileName = multi.getFilesystemName(name);
      }
      System.out.println("이미지를 저장하였습니다. : " + fileName);
    } catch (IOException e) {
      System.out.println("에러. : " + e.toString());
    }
  %>
  dasdasd
  </body>
</html>
