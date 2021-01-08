<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Add Notes</title>
    <%@include file="all_js_css.jsp" %>
  </head>
<body>
	 <div class="container">
  	<%@include file="navbar.jsp" %>
  	<br>
  	
  	<h1>Please fill your note detail</h1>
  	<br>
  	<!-- Forms Start -->
  	<form action="SaveNoteServlet" method="post">
  <div class="form-group" >
    <label for="title">Note Title</label>
    <input type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter title" name="title" required>
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea id="content" placeholder="Enter your content..." class="form-control" name="content" style="height: 300px" required></textarea>
  </div>
  <div class="container text-center">
    <button type="submit" class="btn btn-primary">Add</button>
  
  </div>
</form>
  </div>
</body>
</html>