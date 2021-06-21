<%@page import="java.sql.PreparedStatement"%>
<%@page import="Action.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%

                String img1=request.getParameter("imq1");
   	        String img2=request.getParameter("img2");
                
                System.out.println(img1);
                 System.out.println(img2);
               
                try {
                
                     Connection connection = Dbconnection.getConnection();
                       /* 
			String sql="SELECT * FROM users where username='"+username+"' and password='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
                        if(rs.next())
			{
                        session.setAttribute("username",username);
                    
                        
			response.sendRedirect("userhome.jsp?m1=success");
						
			}
			else
			{
			
                         response.sendRedirect("user.jsp?m2=Failed");   
                            
			}
*/
                }
                
              catch(Exception e)
        {
		out.print(e.getMessage());
	    }  

                        
                        
%>