<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pyramid</title>
</head>
<body>
<% 
int pyramidHight = Integer.parseInt(request.getParameter("pyramidHight"));
for (int line=1; line <= pyramidHight; line++){
	// Los primeros elementos son la longitud de la pirámide menos la fila
	for (int element=1; element<=pyramidHight-line; element++){
		out.append("<img src='img/empty.jpg' alt='Red ball' width='50' height='50' >");
	}

	// Los elementos de enmedio son dos por la fila menos 1
	for (int element=1; element<=line*2 -1; element++){
		out.append("<img src='img/ballRed.jpg' alt='Red ball' width='50' height='50' >");
	}

	// Los ultimos elementos son la longitud de la pirámide menos la fila
	for (int element=1; element<=pyramidHight-line; element++){
		out.append("<img src='img/empty.jpg' alt='Red ball' width='50' height='50' >");
	}
	out.append("<br>");
}
%>

</body>
</html>