<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%!
    Connection con;
    PreparedStatement ps1, ps2;
    public void jspInit()
    {
        try
        {
            //loading the driver
           Class.forName("com.mysql.jdbc.Driver");
            //establish the connection
            con = DriverManager.getConnection("jdbc:mysql://51.75.65.18/imane_shop", "imane", "G!07z2dw");
            //create statement object
            ps1 = con.prepareStatement("select count(*) from clients where userName = ? and password=?");
            ps2 = con.prepareStatement("select * from clients");
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
%>
<%
    String param = request.getParameter("s1");
    if(param =="link")
    {
        ResultSet rs = ps2.executeQuery();
        out.println("<table>");
        while(rs.next())
        {
            out.println("<tr>");
            out.println("<td>"+rs.getString(1)+"</td>");
            out.println("<td>"+rs.getString(2)+"</td");
            out.println("</tr>");
        }
        out.println("</table>");
        rs.close();
    }
    else
    {
        //write jdbc code for authentication
        String user = request.getParameter("username");
        String pass = request.getParameter("password");
        //set form data as param value
        ps1.setString(1,user);
        ps1.setString(2,pass);
        //excute the query
        ResultSet rs = ps1.executeQuery();
        int cnt = 0;
        if (rs.next())
            cnt = rs.getInt(1);
        if(cnt == 0)
            out.println("<b><i><font color=red>Invalid credential</fonr></i></b>");
        else
        {
        	out.println("<body style=background-color:lavender; >");
            out.println("<form><fieldset style= width:60%; >");
            out.println("<b><i><font color=green>valid credential..</fonr></i></b><br>");
            out.println("<b><i><font size=10 color=pink>Bienvenue "+ request.getParameter("username")+"</font></i></b>");
            out.println("<a href="+"catalogue.jsp"+"><h3>Consulter le catalogue</h3></a>");
            out.println("<a href="+"commandes.jsp"+"><h3>Suivre vos commandes</h3></a>");
            out.println("<a href="+"panier.jsp"+"><h3>Visualiser votre panier</h3></a>");
            out.println("</fieldset></form>");
            out.println("</body>");
        }
    }
%>
<%!
    public void jspDestroy()
    {
        try
        {
            //colse
            ps1.close();
            ps2.close();
            con.close();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
%>