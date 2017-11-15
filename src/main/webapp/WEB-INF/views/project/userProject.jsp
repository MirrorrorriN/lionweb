<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>LION</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/statics/css/style.css" type="text/css">
</head>
<body>
<jsp:include page="../header.jsp" flush="true"></jsp:include>
<div id="body">
    <jsp:include page="../sideMenu.jsp" flush="true"></jsp:include>
    <div class="content">
        <ul>
            <a href="<%=request.getContextPath() %>/project/addProject?username=${username}" class="add">New Project</a>
        </ul>
        <div class="container">
            <table>
                <c:choose>
                    <c:when test="${empty projects}">
                        <div align="left">
                            <span>No Project!</span>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <c:forEach items="${projects}" var="project">
                            <tr>
                                <td class="picture">
                                    <img src="<%=request.getContextPath() %>/resource/showImage?imagePath=${project.imageUrl}&type=1">
                                </td>
                                <td>
                                    <div class="text">
                                        <div>
                                            <a href="<%=request.getContextPath() %>/project/projectDetail?id=${project.id}">${project.title}</a>
                                        </div>
                                        <div>${project.authors}</div>
                                        <div>${project.organization}</div>
                                    </div>

                                    <c:if test="${username!=null}">
                                        <%--编辑操作--%>
                                        <span width="7%">
                                        <a href="<%=request.getContextPath() %>/project/editProject?username=${user.userName}&id=${project.id}">edit</a>
                                    </span>
                                        <%--删除操作--%>
                                        <span width="7%">
                                        <a href="<%=request.getContextPath() %>/project/deleteProjectInfo?username=${user.userName}&id=${project.id}">delete</a>
                                    </span>
                                    </c:if>
                                </td>

                            </tr>
                        </c:forEach>
                    </c:otherwise>
                </c:choose>
            </table>
        </div>
    </div>
</div>
<jsp:include page="../footer.jsp" flush="true"></jsp:include>
</body>
</html>