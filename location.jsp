<html>
<head>
  <title>Echoing HTML Request Parameters</title>
</head>
<body>
  <p>Today's date: <%= (new java.util.Date()).toLocaleString()%></p>
  <h3>Choose a grade:</h3>
  <form method="get">
    <input type="checkbox" name="author" value="This is the right grade">100</br>
    <input type="checkbox" name="author" value="Well ... !!">90</br>
    <input type="checkbox" name="author" value="This is not the right grade">80</br>
    <input type="checkbox" name="author" value="Choose again, please">70</br>
    <input type="checkbox" name="author" value="Choose again, please">60</br>
    <input type="checkbox" name="author" value="Choose again, please">50</br>
    <input type="checkbox" name="author" value="Choose again, please">40</br>
    <input type="checkbox" name="author" value="Choose again, please">30</br>
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
