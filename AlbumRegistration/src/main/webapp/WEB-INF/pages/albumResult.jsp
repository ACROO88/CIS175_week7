<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
 <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC From Handling</title>
</head>
<body> <h2>Album Registration Result</h2>
    <table>
        <tr>
            <td>Album</td>
            <td>${a.album}</td>
        </tr>
        <tr>
            <td>Artist</td>
            <td>${a.artist}</td>
        </tr>
        <tr>
            <td>Genre</td>
            <td>${a.genre}</td>
        </tr>
        <tr>
            <td>Release Date</td>
            <td>${a.releaseDate}</td>
        </tr>
        </table>
<a href = "viewAll.mvc">View all Albums</a>
</body>
</html>