<html>
<head>
  <title>Echoing HTML Request Parameters</title>
</head>
<body>
  <h3>Choose a grade:</h3>
  <form method="get">
    <input type="checkbox" name="author" value="100">Tan</br>
    <input type="checkbox" name="author" value="90">Ali</br>
    <input type="checkbox" name="author" value="80">Kumar</br>
    <input type="checkbox" name="author" value="70">Kumar</br>
    <input type="checkbox" name="author" value="60">Kumar</br>
    <input type="checkbox" name="author" value="50">Kumar</br>
    <input type="checkbox" name="author" value="40">Kumar</br>
    <input type="checkbox" name="author" value="30">Kumar</br>
    <input type="submit" value="Query">
  </form>
 
  <%
  String[] authors = request.getParameterValues("author");
  if (authors != null) {
  %>
    <h3>You have selected:</h3>
    <ul>
  <%
      for (int i = 0; i < authors.length; ++i) {
  %>
        <li><%= authors[i] %></li>
  <%
      }
  %>
    </ul>
    <a href="<%= request.getRequestURI() %>">BACK</a>
  <%
  }
  %>
</body>
</html>
