<%@page import="java.sql.PreparedStatement"%>
<%@page import="Action.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

		

            <%
			     
            String username = request.getParameter("username");
            String password = request.getParameter("password");                      
            String email = request.getParameter("email");
            String address = request.getParameter("address");
            String mobile = request.getParameter("mobile");
        
             
               
            				
            try {
						
							
            Connection connection = Dbconnection.getConnection();
            
                     
            
            
            PreparedStatement ps=connection.prepareStatement("insert into users values(?,?,?,?,?)");
            
            ps.setString(1,username);
            ps.setString(2,password);            
            ps.setString(3,email);
                      
            ps.setString(4,address);
            ps.setString(5,mobile);
                       
            int x=ps.executeUpdate();
            if(x>0)
            {
                response.sendRedirect("user.jsp?m1=success");

            }
             else
            {

                response.sendRedirect("userreg.jsp?m2=Failed");   

            }  
    
              }
             catch (Exception e) 
             {
                out.println(e.getMessage());
             }
            %>
          