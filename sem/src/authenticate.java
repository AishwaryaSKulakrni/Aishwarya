import com.mongodb.*;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

import com.mongodb.client.model.Filters;
import static com.mongodb.client.model.Filters.*;
import static com.mongodb.client.model.Projections.*;
import com.mongodb.client.model.Sorts;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.bson.Document;
 
 @WebServlet("/jsp/authenticate")
 
public class authenticate extends HttpServlet { 
	private static final long serialVersionUID = 1L;
	
	//the statements to connect to the default mongo server instance running at localhost with default port..
	
	MongoClient mongoClient = MongoClients.create();
	MongoDatabase database = mongoClient.getDatabase("leave_management"); //mention the name of the database which you have created in place of the name "demo"
	MongoCollection<Document> collection = database.getCollection("login"); //mention the collection where you are storing the user credential details in place of "users"
	
	
    public authenticate() {
        super();
    }

    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at get request ");
		//doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//fetching the username and password from the user input with names "username" and "password" which is present in the login.jsp page
		
		
		String u_name = request.getParameter("username");
		String pwd = request.getParameter("password");
		System.out.println("authenticated username before "+u_name);
		
		
		//System.out.println(pwd+u_name);
		if (collection.find(and(eq("username", u_name), eq("password", pwd), eq("type","admin"))).iterator().hasNext()) {  
			
			
				request.getSession().setAttribute("user", u_name);
				response.sendRedirect("admin.jsp");
				System.out.println("Test admin");
			
			
		}
		
		else if(collection.find(and(eq("username", u_name), eq("password", pwd), eq("type","faculty"))).iterator().hasNext()) 
		{
			System.out.println("authenticated username is "+u_name);
			request.getSession().setAttribute("user", u_name);
			response.sendRedirect("leave.jsp");
			System.out.println("Test faculty");
		}
		
		else
		{
			//redirect back to the login page 
			
			response.sendRedirect("main.jsp");
		}
		
	}
	

	

}
