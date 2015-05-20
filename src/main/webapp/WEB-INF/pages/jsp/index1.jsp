<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.ocpsoft.prettytime.PrettyTime, java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to TalentVouch.com</title>
    </head>

    <body>
        <center><h1>LoginForm</h1>
            <form method="post"action="login.htm" >
    UserName<input type="text" name="userName"/><br> 
   Password :<input type="password" name="password"/><br>
    <input type="submit" value="Login" />
       </form>
           <%!
           //This method converts the time stamp to day ago ex:30 min ago, 1 day ago
           String convertTimeStamp(String timeStamp) throws ParseException {
               PrettyTime p = new PrettyTime();
               SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm");
            Date past = format.parse(timeStamp);
            return p.format(past);
           } 
           %>
          
          <h1> <%String t=convertTimeStamp("2015-05-15 18:05:40.000");%> </h1>
          <h1><%=t%></h1>
		
           
        </center>
    </body>
</html>
