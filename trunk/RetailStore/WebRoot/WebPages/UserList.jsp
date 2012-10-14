<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html  lang="en" >
<head>
<title>yonghuliebiao</title>
 <meta charset="utf-8">
    <link href="../Style/bootstrap.css" rel="stylesheet">
    <link href="../Style/bootstrap-responsive.css" rel="stylesheet">
     <link href="../Style/docs.css" rel="stylesheet">
</head>
<body>


    <form class="form-search">
    <input type="text" placeholder="First Name" class="input-medium search-query">
    <input type="text" placeholder="Last Name" class="input-medium search-query">
    <button type="submit" class="btn">Search</button>
    
    <table class="table table-striped">
              <thead>
                <tr>
                  <th>#</th>
                  <th>First Name</th>
                  <th>Last Name</th>
                  <th>Username</th>
                   <th>modify</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1</td>
                  <td>Mark</td>
                  <td>Otto</td>
                  <td>@mdo</td>
                  <td >
                 <div class="dropdown" >
                <a href="#"   class="dropdown-toggle" data-toggle="dropdown" role="button" >查看<b class="caret"></b></a>
                <ul class="dropdown-menu">
                 <li><a href="UserEdit.jsp" tabindex="-1">查看</a></li>
                    <li><a href="UserEdit.jsp" tabindex="-1">编辑</a></li>
                    <li><a href="UserEdit.jsp" tabindex="-1">删除</a></li>
                 
                  </ul>
            </div>
                  </td>
                </tr>
                <tr>
                  <td>2</td>
                  <td>Jacob</td>
                  <td>Thornton</td>
                  <td>@fat</td>
                     <td >
                  <div class="dropdown" >
                <a href="#"   class="dropdown-toggle" data-toggle="dropdown" role="button" >查看<b class="caret"></b></a>
                <ul class="dropdown-menu">
                 <li><a href="UserEdit.jsp" tabindex="-1">查看</a></li>
                    <li><a href="UserEdit.jsp" tabindex="-1">编辑</a></li>
                    <li><a href="UserEdit.jsp" tabindex="-1">删除</a></li>
                 
                  </ul>
            </div>
                  </td>
                </tr>
                <tr>
                  <td>3</td>
                  <td>Larry</td>
                  <td>the Bird</td>
                  <td>@twitter</td>
                     <td >
                 <div class="dropdown" >
                <a href="#"   class="dropdown-toggle" data-toggle="dropdown" role="button" >查看<b class="caret"></b></a>
                <ul class="dropdown-menu">
                 <li><a href="UserEdit.jsp" tabindex="-1">查看</a></li>
                    <li><a href="UserEdit.jsp" tabindex="-1">编辑</a></li>
                    <li><a href="UserEdit.jsp" tabindex="-1">删除</a></li>
                 
                  </ul>
            </div>
                  </td>
                </tr>
              </tbody>
            </table>
       <div class="pagination">
    <ul>
    <li><a href="#">Prev</a></li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">Next</a></li>
    </ul>
    </div>
    </form>
</body>


  <script src="../Script/jquery-1.8.2.js"> </script>
  <script src="../Script/bootstrap.min.js"> </script>
  <script src="../Script/jquery-ui-1.9.0.custom.min.js"> </script>
</html>