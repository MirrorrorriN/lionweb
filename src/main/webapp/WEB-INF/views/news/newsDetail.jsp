<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
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
    <div class="content-display">
        <div class="container">
            <table>
                <tr>
                    <td>
                        <div class="richText">${news.description}</div>
                    </td>
                </tr>
                <tr><td colspan="2"><br/></td> </tr>

            </table>
        </div>
    </div>
</div>
<jsp:include page="../footer.jsp" flush="true"></jsp:include>
</body>
</html>