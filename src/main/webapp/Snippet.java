package com.klef.jfsd.springboot.controller;

public class Snippet {
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<%@taglib uri="jakarta.tags.core" prefix="c"%>
	<!DOCTYPE html>
	<html lang="en">
	<head>
	    <meta charset="UTF-8">
	    <title>DELETE PRODUCT</title>
	    <style>
	        /* Universal styling */
	        * {
	            box-sizing: border-box;
	            margin: 0;
	            padding: 0;
	        }
	
	        body {
	            display: flex;
	            flex-direction: column;
	            align-items: center;
	            min-height: 100vh;
	            font-family: Arial, sans-serif;
	            background: linear-gradient(to bottom right, #00c4cc, #009aa3);
	            color: #333;
	            padding: 20px;
	        }
	
	        h3 {
	            color: #009aa3;
	            font-size: 2rem;
	            margin-bottom: 10px;
	        }
	
	        h5 {
	            color: #007f89;
	            font-size: 1.5rem;
	            margin: 20px 0 10px;
	            text-decoration: underline;
	        }
	
	        table {
	            width: 90%;
	            max-width: 800px;
	            margin: 15px auto;
	            border-collapse: collapse;
	            background-color: #ffffff;
	            border-radius: 8px;
	            overflow: hidden;
	            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
	        }
	
	        th, td {
	            padding: 12px 20px;
	            text-align: center;
	            font-size: 1rem;
	        }
	
	        th {
	            background-color: #009aa3;
	            color: #ffffff;
	            font-weight: bold;
	        }
	
	        tr:nth-child(even) {
	            background-color: #f2f2f2;
	        }
	
	        tr:hover {
	            background-color: #e0f7fa;
	        }
	
	        .table-title {
	            text-align: center;
	            margin-top: 20px;
	            font-size: 1.2rem;
	            color: #555;
	        }
	    </style>
	</head>
	<body>
	    <h3>HELP & SUPPORT</h3>
	
	    <table class="table table-striped">
	        <tr>
	            <th>ID</th>
	            <th>NAME</th>
	            <th>EMAIL</th>
	            <th>SUBJECT</th>
	            <th>MESSAGE</th>
	            <th>ACTION</th>
	        </tr>
	        <c:forEach items="${helps}" var="help">
	            <tr>
	                <td><c:out value="${help.id}"></c:out></td>
	                <td><c:out value="${help.uname}"></c:out></td>
	                <td><c:out value="${help.email}"></c:out></td>
	                <td><c:out value="${help.subject}"></c:out></td>
	                <td><c:out value="${help.message}"></c:out></td>
	                
	                <td>
	                	<a href='<c:url value='delete2?id=${help.id}'></c:url>'>Delete</a>
	                </td>
	            </tr>
	        </c:forEach>
	    </table>
	
	    <div class="footer">
	            <a href="admin-dashboard.jsp">Go back to Home</a>
	    </div>
	</body>
	</html>
}

