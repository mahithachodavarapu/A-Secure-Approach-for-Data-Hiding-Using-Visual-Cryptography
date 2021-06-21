<%@page import="java.sql.PreparedStatement"%>
<%@page import="Action.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%

                String username=request.getParameter("username");
   	        String Password=request.getParameter("pass");
                String email = null;
               
                try {
                
 Connection connection = Dbconnection.getConnection();
                        
			String sql="SELECT * FROM users where username='"+username+"' and password='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
                        if(rs.next())
			{
                        session.setAttribute("username",username);
                        email = rs.getString("email");
                        session.setAttribute("email",email);
                        
                        
			response.sendRedirect("userhome.jsp?m1=success");
						
			}
			else
			{
			
                         response.sendRedirect("user.jsp?m2=Failed");   
                            
			}

                }
                
              catch(Exception e)
        {
		out.print(e.getMessage());
	    }  

                        
                        
%>