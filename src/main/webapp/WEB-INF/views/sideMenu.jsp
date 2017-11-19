<%--
  Created by IntelliJ IDEA.
  User: DJ
  Date: 2017/10/23
  Time: 1:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="sidebar">
    <h3>My Profile</h3>
    <ul>
        <li>
            <a href="<%=request.getContextPath() %>/member/memberEditPhoto?username=${username}">My Photo</a>
        </li>
        <li>
            <a href="<%=request.getContextPath() %>/user/userProfile?username=${username}">My Info</a>
        </li>
        <li>
            <a href="<%=request.getContextPath() %>/news/userProfile?username=${username}">My News</a>
        </li>
        <li>
            <a href="<%=request.getContextPath() %>/publication/userProfile?username=${username}">My Publication</a>
        </li>
        <li>
            <a href="<%=request.getContextPath() %>/project/userProfile?username=${username}">My Project</a>
        </li>
    </ul>
    <c:if test="${userType == 0}">
        <h3>Admin Panel</h3>
        <ul>
            <li>
                <a href="<%=request.getContextPath() %>/admin/memberInfo">All Members</a>
            </li>
        </ul>
    </c:if>
</div>