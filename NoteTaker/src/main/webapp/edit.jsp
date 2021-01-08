<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all_js_css.jsp" %>
<title>Edit Note</title>
</head>
<body>
<div class="container">
  	<%@include file="navbar.jsp" %>
  	<br>
   <h1> Edit Your Note </h1>
   <%
   int noteId = Integer.parseInt(request.getParameter("note_id").trim());
   Session s = FactoryProvider.getFactory().openSession();
   Note note = (Note)s.get(Note.class, noteId);
   
   
   %>
   	<form action="UpdateNoteServlet" method="post">
   	<input value="<%=note.getId()%>" type="hidden" name="noteId"/>
  <div class="form-group" >
    <label for="title">Note Title</label>
    <input type="text"
     class="form-control" id="title" aria-describedby="emailHelp"
      placeholder="Enter title" 
      value="<%= note.getTitle() %>"
      name="title" required>
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea id="content"
     placeholder="Enter your content..."
      class="form-control" name="content"
       style="height: 300px" required>
       <%= note.getContent() %>
    </textarea>
  </div>
  <div class="container text-center">
    <button type="submit" class="btn btn-success">Update Your Note</button>
  
  </div>
</form>
  </div>
   
</body>
</html>