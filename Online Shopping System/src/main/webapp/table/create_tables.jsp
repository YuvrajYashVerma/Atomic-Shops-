<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%
  try{
	  Connection con=ConnectionProvider.getCon();
	  Statement st=con.createStatement();
	  String q1="create table users(name varchar(100),email varchar(100) primary key, mobileNumber bigint, securityQuestion varchar(200),answer varchar(200),password varchar(100),address varchar(500),city varchar(100),state varchar(100),country varchar(100))";
      String q2="create table product(id int, name varchar(500), category varchar(200),price int, active varchar(10))";
      System.out.println(q2);
	  System.out.println(q1);
      //st.execute(q1);
      st.execute(q2);
      System.out.println("Table Created");
      con.close();
  }catch(Exception e){
	  System.out.println(e);
  }
%>