<%--
  Created by IntelliJ IDEA.
  User: DJ
  Date: 2017/10/20
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
    <meta charset="UTF-8">
    <title>LION</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/statics/css/style.css" type="text/css">
    <link rel="shortcut icon" href="<%=request.getContextPath() %>/statics/images/favicon.ico" type="image/x-icon" />
</head>
<body>
<jsp:include page="../header.jsp" flush="true"></jsp:include>
<div id="body">
    <h3 class="large-category">PUBLICATIONS</h3>
    <div class="content-display">
        <div class="container">
        <table>
            <c:choose>
                <c:when test="${empty publications}">
                    <div align="left">
                        <span>No Publication!</span>
                    </div>
                </c:when>
                <c:otherwise>
                    <c:forEach items="${publications}" var="publication">
                        <tr class="list-display">
                            <td class="pub-picture">
                                <img src="<%=request.getContextPath() %>/resource/showImage?imagePath=${publication.imageUrl}&type=1">
                            </td>
                            <td class="text-display">
                                <div class="text">
                                    <div class="title">
                                        <a href="<%=request.getContextPath() %>/publication/publicationDetail?id=${publication.id}">${publication.title}</a>
                                    </div>
                                    <div>${publication.authors}</div>
                                    <div>${publication.organization}</div>
                                    <div>
                                    <c:if test="${publication.textUrl != ''}">
                                        <span>
                                            <a class="download" href="<%=request.getContextPath() %>/resource/downloadFile?filePath=${publication.textUrl}">PDF</a>
                                        </span>
                                    </c:if>
                                    <c:if test="${publication.slideUrl != ''}">
                                        <span>
                                            <a class="download" href="<%=request.getContextPath() %>/resource/downloadFile?filePath=${publication.slideUrl}">Slide</a>
                                        </span>
                                    </c:if>
                                    <c:if test="${publication.videoUrl != ''}">
                                        <span>
                                            <a class="download" href="<%=request.getContextPath() %>/resource/downloadFile?filePath=${publication.videoUrl}">Video</a>
                                        </span>
                                    </c:if>
                                    </div>
                                </div>
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