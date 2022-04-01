<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<link href="sourceboot/css/bootstrap.min.css" rel="stylesheet">
<meta charset="UTF-8">
	<title>캠핑</title>
</head>


<body align="center">




<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
   <a class="navbar-brand" href="shop/shopMain.jsp">캠핑</a>
  <button class="navbar-toggler collapsed" aria-expanded="false" aria-controls="navbarColor01" aria-label="Toggle navigation" type="button" data-target="#navbarColor01" data-toggle="collapse">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor01">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="manager/logon/managerLoginForm.jsp"> 관리자<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
       <a class="nav-link" href="#">주문조회</a>
      </li>
      <li class="nav-item">
         <a class="nav-link" href="#">고객후기</a>
      </li>
      <li class="nav-item">
       <a class="nav-link" href="boardfolder/list.jsp">Q&A 문의</a>
      </li>
    </ul>    
  </div>
</nav>



	   
	<div align="right">
	<table>
	<tr>
		<td>
			<table>
					<tr>
						<td>
						  <div class="form-group">
						      <label for="exampleInputEmail1">Email</label>
						      <form method="post" action="customer/clogon/customerLoginPro.jsp">
						      <input name="id"  type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="***@***.***">
						    </div>
				    	</td>
				    	<td>
				    		<div class="form-group">
						      <label for="exampleInputPassword1">Password</label>
						      <input name="passwd" type="password" class="form-control" id="exampleInputPassword1" placeholder="*********">
						    </div>
				    	</td>
				    	<td>
					    	<table>
						    	<tr>
							    	<td>
							    		<input type="submit" value="Login" class="btn btn-success  btn-sm">
							    		</form>
							    	</td>
							    </tr>
							    <tr>
							    	<td>
							    		<form method="post" action="insertTestForm.jsp">
									      	<input type="submit" value="Sign up" class="btn btn-secondary btn-sm"">
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
	</div>


	<h1> </h1>
	



	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <a class="navbar-brand" href="shop/list.jsp?clock_kind=all">ALL</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	
	  <div class="collapse navbar-collapse" id="navbarColor03">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item">
	        <a class="nav-link" href="shop/list.jsp?clock_kind=100">- Leather</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="shop/list.jsp?clock_kind=200">- Gold</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="shop/list.jsp?clock_kind=300">- Silver</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="shop/list.jsp?clock_kind=400">- Black</a>
	      </li>
	    </ul>
	    <form class="form-inline my-2 my-lg-0">
	      <input class="form-control mr-sm-2" type="text" placeholder="Search">
	      <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
	    </form>
	  </div>
	</nav>



	<div class="row">
	  <div class="col-xs-6 col-md-3">
	    <a href="#" class="thumbnail">
	      <img src="photofile/4000003.jpg">
	    </a>
	  </div>
	  
	  <div class="col-xs-6 col-md-3">
	    <a href="#" class="thumbnail">
	      <img src="photofile/2000006.jpg">
	    </a>
	  </div>
	  
	  <div class="col-xs-6 col-md-3">
	    <a href="#" class="thumbnail">
	      <img src="photofile/1000001.jpg">
	    </a>
	  </div>
	  
	  <div class="col-xs-6 col-md-3">
	    <a href="#" class="thumbnail">
	      <img src="photofile/1000004.jpg">
	    </a>
	  </div>
	</div>

	<br>
    
    <div align="center">
	<button type="button" class="btn btn-outline-info">Facebook</button>
	<button type="button" class="btn btn-outline-warning">KaTalk</button>
	<button type="button" class="btn btn-outline-danger">Instagram</button>
	</div>
	
	<br>
	
    <blockquote class="blockquote text-center">
	  <p class="mb-0">BANK INFO</p>
	  <p class="mb-0">신한금융투자</p>
	  <p class="mb-0">270-22-591047</p>
	</blockquote>
	
	<div align="center">
	<button type="button" class="btn btn-secondary" title="" data-container="body" data-toggle="popover" data-placement="top" data-content="이희창(2015114022) 김충식(2015114007) 이상현(2015114018) 공태현(2015114002)" data-original-title="Team">팀원</button>
		<span class="badge badge-dark">이희창</span>
		<span class="badge badge-warning">김충식</span>
		<span class="badge badge-success">공태현</span>
		<span class="badge badge-info">이상현</span>
     </div>

<br>
</body>

</html>
