<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script type="text/javascript">
	var app = angular.module('myApp',[]);
	app.controller("SupplierController",function($scope,$http){
		$scope.getdata = function(){
			$http({
				method : 'GET',
				url : 'viewsupplierlist'
			}).success(function(data, status ,headers, config){
				$scope.result = data;
				alert("success");
			}).error(function(data, status, headers, config){
				alert("error");
			});
		}
	});
		
		
</script>
<style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}
</style>
</head>
<%@ include file="/WEB-INF/views/Menu.jsp" %>
<body>
<div ng-app="myApp" ng-controller="SupplierController" ng-init="getdata()">
<div style="overflow-x:auto;">
<table>
<tr>
<th>sid</th>
<th>sn</th>
<th>email_id</th>
<th>mn</th>
<th>sa</th>
</tr>
<tr ng-repeat="items in result">
<th>{{items.sid}}</th>
<th>{{items.sn}}</th>
<th>{{items.email_id}}</th>
<th>{{items.mn}}</th>
<th>{{items.sa}}</th>
<th><a href="editsupplier/{{items.sid}}">edit</a></th>
<th><a href="deletesupplier/{{items.sid}}">delete</a></th>
</tr>
</table>
</div>
 </div>
</body>
</html>