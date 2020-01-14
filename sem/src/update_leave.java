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
 
 @WebServlet("/jsp/update_leave")
 
public class update_leave extends HttpServlet { 
	private static final long serialVersionUID = 1L;
	
	//the statements to connect to the default mongo server instance running at localhost with default port..
	
	MongoClient mongoClient = MongoClients.create();
	MongoDatabase database = mongoClient.getDatabase("leave_management"); //mention the name of the database which you have created in place of the name "demo"
	MongoCollection<Document> collection = database.getCollection("leaves"); //mention the collection where you are storing the user credential details in place of "users"
	
    public update_leave() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at get request ");
		//doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//fetching the username and password from the user input with names "username" and "password" which is present in the login.jsp page
		String user_name = request.getParameter("user_name");
		
		//Document query = new Document("user_name", new Document("in", user_name));
		//long count = collection.count(query)
		//int x = collection.count(in("user_name", user_name));
		Document mydoc = collection.find(in("user_name", user_name)).first();
		
		String name = request.getParameter("name");
		String designation = request.getParameter("designation");
		String date = request.getParameter("date");
		String reason = request.getParameter("reason");
		String credit = request.getParameter("credit");
		String avail = request.getParameter("avail");
		String balance = request.getParameter("balance");
		System.out.println("balance = "+balance);
		collection.updateOne(eq("user_name", user_name), new Document("$set", new Document("date", date)));
		collection.updateOne(eq("user_name", user_name), new Document("$set", new Document("reason", reason)));
		collection.updateOne(eq("user_name", user_name), new Document("$set", new Document("avail", avail)));
		collection.updateOne(eq("user_name", user_name), new Document("$set", new Document("balance", balance)));
		
		
		//String report_str= mydoc.toJson(); 
		
		//System.out.println("Squad duty " +report_str);		
		//response.getWriter().append(report_str);
		//System.out.println("Counting "+response.getWriter());
		
		
		
	}
	
	

	

}

