<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<link href="../../sourceboot/css/bootstrap.min.css" rel="stylesheet">
<title>관리자 로그인</title>
</head>
<STYLE TYPE="text/css">
<!--
	BDOY {background-color:green}
-->
</STYLE>
<body>


<h1> </h1><br><br>
	<h1 class="text-center display-2" >캠핑</h1>	
	<br><br><br>
	<div class="text-center jumbotron">
	  <h2>관리자</h2> <br>
	 <div align="center">
	<table>
	<tr>
		<td>
			<table>
					<tr>
						<td>
						  <div class="form-group">
						      <label for="exampleInputEmail1">ID</label>
						      <form method="post" action="managerLoginPro.jsp">
						      <input name="id"  type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"  maxlength="16"  placeholder="관리자ID">
						    </div>
				    	</td>
				    	<td>
				    		<div class="form-group">
						      <label for="exampleInputPassword1">Password</label>
						      <input name="passwd" type="password" class="form-control" id="exampleInputPassword1" placeholder="*********" maxlength="16">
						    </div>
				    	</td>
				    	<td>
					    	<table>
						    	<tr>
							    	<td>
							    		<input type="submit" value="Login" class="btn btn-outline-success">
							    		</form>
							    	</td>
							    </tr>
							    <tr>
							    	<td>
							    		<form method="post" action="../../shop/shopMain.jsp">
									      	<input type="submit" value="상점" class="btn btn-outline-secondary"">
									 	</form>
							    	</td>
						    	</tr>
					    	</table>
				    	</td>
				    </tr>   	 	
			</table>
		</td>
	</tr>
	</table>
	   	<div align="center">
	<button type="button" class="btn btn-secondary" title="" data-container="body" data-toggle="popover" data-placement="top" data-content="이희창(2015114022) 김충식(2015114007) 이상현(2015114018) 공태현(2015114002)" data-original-title="Team">팀원</button>
		<span class="badge badge-dark">이희창</span>
		<span class="badge badge-warning">김충식</span>
		<span class="badge badge-success">공태현</span>
		<span class="badge badge-info">이상현</span>
     </div>
	   </div>
	   
	   
	</div>
	
</body>
</html>