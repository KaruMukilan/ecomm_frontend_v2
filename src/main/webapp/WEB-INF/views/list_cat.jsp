<!DOCTYPE html>
<!-- <html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org"> -->
<html>
<head>
 	<meta charset="utf-8" />
	<title>Ecommerce</title>
	<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
	<script src="./resources/js/jquery.js"></script>
	<script src="./resources/js/jquery.min.js"></script>
	<script src="./resources/js/bootstrap.min.js"></script>	
	<link rel="stylesheet" href="./resources/css/jquery.dataTables.min.css">
	<link rel="stylesheet" href="./resources/css/editor.dataTables.min.css">
	<link rel="stylesheet" href="./resources/css/select.dataTables.min.css">
	<link rel="stylesheet" href="./resources/css/buttons.dataTables.min.css">
	

</head>

<body>
<form:form action="" method="GET">
<h2 >Category Table<br><br></h2>
<table width="70%" style="border: 3px;background: rgb(243, 244, 248);"><tr><td>
	<table id="categoryTable" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>Id</th>
     			<th>Name</th>
            </tr>
        </thead>       
    </table>
    </td></tr></table>
</form:form>
	<script src="./resources/js/dataTables.editor.min.js"></script>

    <script src="./resources/js/jquery.dataTables.min.js"></script>
    	<!-- <script src="https://editor.datatables.net/extensions/Editor/js/dataTables.editor.min.js"> -->
    <script src="./resources/js/database.js"></script>
</body>


</html>