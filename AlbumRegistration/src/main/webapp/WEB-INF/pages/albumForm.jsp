<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC Form Handling</title>
</head>
<body>
<h2>Album Registration Form</h2>
<mvc:form modelAttribute="album" action="result.mvc">
	<table>
	    <tr>
	        <td><mvc:label path="album">Album</mvc:label></td>
	        <td><mvc:input path="album" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="artist">Artist</mvc:label></td>
	        <td><mvc:input path="artist" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="releaseDate">Release Date</mvc:label></td>
	        <td><mvc:input path="releaseDate" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="genre">Genre</mvc:label></td>
	        <td><mvc:radiobuttons path="genre" />
	        	</td>
	    </tr>
        <tr>
	        <td colspan="2">
                <input type="submit" value="Submit" />
	        </td>
	    </tr>
	</table>  
</mvc:form>
<a href = "viewAll.mvc">View all Albums</a>
</body>
</html>