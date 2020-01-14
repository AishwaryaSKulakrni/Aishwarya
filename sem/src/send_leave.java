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
 
 @WebServlet("/jsp/send_leave")
 
public class send_leave extends HttpServlet { 
	private static final long serialVersionUID = 1L;
	
	//the statements to connect to the default mongo server instance running at localhost with default port..
	
	MongoClient mongoClient = MongoClients.create();
	MongoDatabase database = mongoClient.getDatabase("leave_management"); //mention the name of the database which you have created in place of the name "demo"
	MongoCollection<Document> collection = database.getCollection("leaves"); //mention the collection where you are storing the user credential details in place of "users"
	
    public send_leave() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at get request ");
		//doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//fetching the username and password from the user input with names "username" and "password" which is present in the login.jsp page
		
		
		String name = request.getParameter("name");
		String user_name = request.getParameter("user");
		String designation = request.getParameter("designation");
		String no_of_leaves = request.getParameter("date");
		String date = request.getParameter("date");
		String reason = request.getParameter("reason");
		String credit = request.getParameter("credit");
		String avail = request.getParameter("avail");
		String balance = request.getParameter("balance");
		
		
		Document faclt = new Document();
		
		faclt.put("name", name);
		faclt.put("user_name", user_name);
		faclt.put("designation", designation);
	   faclt.put("date", date);
		faclt.put("reason", reason);
		faclt.put("credit", credit);
		faclt.put("avail", avail);
		faclt.put("balance", balance);
		
        collection.insertOne(faclt);
        response.sendRedirect("leave.jsp");
        System.out.println("leave updated");
		
	}
	
	

	

}
