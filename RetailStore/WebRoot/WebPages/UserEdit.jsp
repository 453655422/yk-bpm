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
<form class="form-horizontal">
  <div id="content">
     <div class="control-group">
<label class="control-label" for="inputEmail">Email</label>
<div class="controls">
<input type="text" id="inputEmail" placeholder="Email">
</div>
</div>
   <div class="control-group error">
<label class="control-label" for="inputEmail">Email</label>
<div class="controls">
<input type="text" id="inputEmail" placeholder="Email"><span class="help-inline">Please correct the error</span>
</div>
</div>
<div class="control-group">
<label class="control-label" for="inputPassword">Password</label>
<div class="controls">
<input type="password" id="inputPassword" placeholder="Password">
</div>
</div>

<div class="control-group">
<label class="control-label" for="inputPassword">Password</label>
<div class="controls">
<textarea rows="3"></textarea>
</div>
</div>


<div class="control-group">
<label class="control-label" for="inputPassword">Password</label>
<div class="controls">
<label class="radio">
<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
Option one is this and that—be sure to include why it's great
</label>
<label class="radio">
<input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
Option two can be something else and selecting it will deselect option one
</label>
</div>
</div>


<div class="control-group">
<label class="control-label" for="inputPassword">Password</label>
<div class="controls">
<select  class="span1">
<option>1</option>
<option>2</option>
<option>3</option>
<option>4</option>
<option>5</option>
</select>
</div>
</div>


<div class="control-group">
<div class="controls">
<label class="checkbox">
<input type="checkbox"> Remember me
</label>

</div>
</div>


    <div class="form-actions">
    <button type="submit" class="btn btn-primary">Save changes</button>
    <button type="button" class="btn">Cancel</button>
    
    <a href="UserList.jsp" class="btn btn-large btn-primary">返回列表</a>
    </div>
    </div>
<div class="alert alert-info">
              <button data-dismiss="alert" class="close" type="button">×</button>
              <strong>Heads up!</strong> This alert needs your attention, but it's not super important.
            </div>
            
  
    <div class="modal" id="myModal" style="display:none;"  tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="myModalLabel">Modal header</h3>
    </div>
    <div class="modal-body">
    <p>One fine body…</p>
    </div>
    <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
    <button class="btn btn-primary">Save changes</button>
    </div>
    </div>
</form>
</body>
</html>