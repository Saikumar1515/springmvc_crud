<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
<div align="center">
	<h1>Manage Employee Records</h1>
	<h3 style="color:green">${success}</h3> <br> 
	<h3 style="color:red">${failure}</h3> <br>
	<a href="add"><button>Add Record</button></a> <br> <br>
	<a href="fetch"><button>Fetch Records</button></a> <br>
</div>
</body>
</html>