

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServ2
 */
@WebServlet("/LoginServ2")
public class LoginServ2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServ2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		HttpSession session=request.getSession(true);
		
		   
        int a = 210;
		int b = 240;
		int result = (int) (Math.floor((Math.abs(a-b)+1) * Math.random()) + Math.min(a, b));
	   
	  
		int val[] = new int[100];
		
		
		for(int k=0;k<100;k++)
		{
			val[k]=(int) (Math.floor((Math.abs(a-b)+1) * Math.random()) + Math.min(a, b));
		}
	  
	
		System.out.println("=======================================> got the length ===========> "+val.length);
		
	    String strStock = request.getParameter("stk");
	    
	    if(strStock != null && strStock != "")
	    {
	    	System.out.println("got in the stock ===================> "+strStock);
	    	
	    }
	    
	    try
	    {
	    	
	    	//specify the serverhttp://dev.markitondemand.com/Api/v2/Quote/xml?symbol=AAPL&callback=myFunction
			   String url ="http://reliermachine.com/stock.php?stk=msft";
					   //"http://dev.markitondemand.com/Api/v2/Quote/xml?symbol=AAPL&callback=myFunction";
			   URL server = new URL(url);

			   
			   StringBuilder sb = new StringBuilder();
			   String line ="";
			   
			   
			   
			   // open the connection
			   HttpURLConnection connection = (HttpURLConnection)server.openConnection();
			   connection.connect();
			   
			   

			   InputStream file_in = connection.getInputStream();
			   BufferedReader in = new BufferedReader(new InputStreamReader(file_in));
	    	
	    }
	    catch(Exception e)
	    {
	    	
	    	
	    }
	    
	    
	    String strval="";
	    
	    String strvalfin="";
	    
	    String strConstantVal=""; 
	    
	    String[] strConstantValArr;
	    
	    for(int k=0;k<val.length;k++)
    	{
    		strval = strval + val[k] +",";
    	}
	    
	    
	    
	    	String strValOnOff="1";
		   
		   
		   if(session.getAttribute("strOnOff") != null)
		   {
			   strValOnOff = (String)session.getAttribute("strOnOff");
			   strValOnOff="2";
			   
			   
			   
		   }
		   else
		   {
			   strConstantVal = strval;                  //this is the constant value which was required ddddddddddddddddddddddddddddddd
			   //strValOnOff="off";
		   }
	    
	    
		   
		   
		   
		   
		   
		   if(session.getAttribute("strConstantVal") != null)
			{
		    	
		    	strConstantVal = (String) session.getAttribute("strConstantVal");
		    	
			}
		   
		   System.out.println(" LOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO "+strval);
		   
		   strConstantValArr = strConstantVal.split(",");
		   
		   
		   
	    if(session.getAttribute("strArr") != null)
		{
	    	
	    	String strArrVal = (String) session.getAttribute("strArr");
	    	
	    	System.out.println(" KOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO "+strArrVal);
	    	
	    	String valit[] = strArrVal.split(",");
	    	
	    	String valit1[] = new String[100];
	    	
	    	
	    	
	    	valit1[0] = 	result+"";
	    	
	    	for(int y=1;y<=99;y++)
	    	{
	    		valit1[y] = 	valit[y-1];
	    	}
	    	
	    	
	      	
	    	
	    	for(int k=0;k<valit1.length;k++)
	    	{
	    		
	    		if(strValOnOff.equalsIgnoreCase("2"))
	    		{
	    			
	    			if(k>=21)
	    			{
	    				
	    				strvalfin = strvalfin + strConstantValArr[k] + ",";
	    				//strvalfin = strvalfin + valit1[k] + ",";
	    				System.out.println("TEST THIS CODE EEEEEEEEEEEEEEEEEEEEEEEEEEE "+k+" "+strConstantValArr.length);
	    				
	    			}
	    			else
	    			{
	    				strvalfin = strvalfin + valit1[k] + ",";
	    			}
	    			
	    		}
	    		else
	    		{
	    			strvalfin = strvalfin + valit1[k] + ",";
	    		}
	    				
	    		
	    	}
	    	
	    	
	    	strval = strvalfin;
	    	
		}
	    else
	    {
	    	
	    }
	    
	    
	    
	   
	   

	   session.setAttribute("strConstantVal", strConstantVal);

	   session.setAttribute("strOnOff", strValOnOff);
	   
	   session.setAttribute("strArr", strval); //this is where data is stored
		
	   request.setAttribute("str", strval);
		
		RequestDispatcher req =  request.getRequestDispatcher("testtwos.jsp");
		 req.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
