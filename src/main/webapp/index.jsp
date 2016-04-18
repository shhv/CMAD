<html>
<head>
<script src="scripts/jquery-2.1.3.js"></script>
<script>
 $(document).ready(function(){
	 $.get("rest/user", function(data){
			var rowTemplate = $("#templates table").html();
			console.log(rowTemplate);
			for(index in data){
				var row = rowTemplate.replace("name",data[index].name)
							.replace("emailId",data[index].emailId)
							.replace("age",data[index].age);
				$("#data").append(row);
			}
		});
});
</script>
</head>
<body>
<div id="templates" style="display: none;">
	<table>
		<tr><td>name</td><td>emailId</td><td>age</td></tr>
	</table>
</div>
<table id="data" border="1" style="width:50%">
<tr>
<td>name</td>
<td>emailId</td>
<td>age</td>
</tr>
</table>
</body>
</html>