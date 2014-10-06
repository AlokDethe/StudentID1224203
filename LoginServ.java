

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.lang.reflect.Array;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.print.event.PrintEvent;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.stream.*;
import javax.xml.namespace.QName;

/**
 * Servlet implementation class LoginServ
 */
@WebServlet(name = "LoginServs", urlPatterns = { "/LoginServs" })
public class LoginServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServ() {
        super();
        // TODO Auto-generated constructor stub
    }

    
    
    
    public String[] sep(String s1,String s2) 
    {
    	
    	
    	System.out.println("got inside sep ppppppppppppppppppppppppppppppppppppppp "+s1+" "+s2+" ");
    	
    	String carr[] = s1.split(",");
    	
    	System.out.println("got inside sep ppppppppppppppppppppppppppppppppppppppp "+s1+" "+s2+" "+carr.length);
    	
    	String carrop[] = new String[12];
    	
    	int j=0;
    	for(j = 0; j<carr.length ; j++)
    	{
    		System.out.println("==== final value fetched dddddddddddddddddddd ===> "+carr[j]);
    	}
    	
    	
    	//carrop[0]=carr[11];
    	
    	
    	
    	carrop[0] = s2;
    	carrop[1] = carr[0];
    	carrop[2] = carr[1];
    	carrop[3] = carr[2];
    	carrop[4] = carr[3];
    	carrop[5] = carr[4];
    	carrop[6] = carr[5];
    	carrop[7] = carr[6];
    	carrop[8] = carr[7];
    	carrop[9] = carr[8];
    	carrop[10] = carr[9];
    	carrop[11] = carr[10];
    	
    	for(j = 0; j<carrop.length ; j++)
    	{
    		System.out.println("==== final value fetched dddddddddddddddddddd ===> 2 "+carrop[j]);
    	}
    	
    	return carrop;
    	
    	//carrop[0]
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//System.out.println("===========================> ");
		
String str="";

		
		try{
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

			   

			   // read in the query result and put it in a string builder
			   while((line = in.readLine())!= null){
			        sb.append(line);
			   }
			   
			
			   

			   
			   //test this code 
			   System.out.println("This code for server side programming gggg");
			   
			   in.close();

			   //print out the strings in the string builder

			   System.out.println(sb.toString());
			   
			   str = sb.toString();
			   
			   String actualprice="";
			   
			   String strNumber = "";
			   
			   for(int cnt=0;cnt<str.length();cnt++)
				{
				
				 
				   
					if(str.charAt(cnt)=='p' && str.charAt(cnt+1)=='r' && str.charAt(cnt+2)=='i' && str.charAt(cnt+3)=='c' && str.charAt(cnt+4)=='e')
					{
						int cnt2 = cnt+9;
				
						char c = str.charAt(cnt2);
						
						while(Character.isDigit(str.charAt(cnt2)))
						{
							System.out.println("got results ssssssssssssssssssssssssss "+str.charAt(cnt2));
							strNumber=strNumber+str.charAt(cnt2);
							
							cnt2++;
						}
						
						
						System.out.println("================================== TEST ==================> "+strNumber);
						
						cnt +=  5;
					}
					 
				}
			   
			  char ch[] = str.toCharArray();
			   
			  System.out.println("got the required number rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr"+strNumber);
			
			  
			   HttpSession session=request.getSession(true);
			 
			   //String strobj="";
			   
			   int testTheValue=0;
			   
			   String st="";
			   
			   
			   
			   //if the session has the values then put that value or else 
			   String numVal[] = null;
			   
			   if(session.getAttribute("strArr") != null)
			   {
				   
				   System.out.println("Inside the session if statement ===============> ");
				   st = (String) session.getAttribute("strArr");
				   String sto[] = st.split(",");
				   System.out.println(" strobj jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj===>  "+st+" "+sto[0]);
				   
					   String stTOStore = "";
					   
					   if(sto.length <= 10)
					   {
						   st=st + "," + strNumber+ ",";
						   System.out.println(" GOT TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT st "+st);
					   }
					   else
					   {
						   numVal = sep(st,strNumber);
						   
						   for(int k=0;k<numVal.length;k++)
						   {
							   System.out.println(" =======================> numval "+numVal[k]);
						   }
						   
						   for(int h=0;h<numVal.length;h++)
						   {
							   if(!numVal[h].equalsIgnoreCase(""))
							   {
								   stTOStore = stTOStore + "," +numVal[h] + ",";
							   }
							   
							   System.out.println("This is the number TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTtt "+numVal[h]);
						   }
						   
						   System.out.println("Final Value eeeeeeeeeee to Store eeeeeeeeeeeeeeeeeeeeeeeeeeeee "+stTOStore);
						   st = stTOStore;
						   
					   }
				   
			   }
			  
			   
			   
			   //sets data in session as required. this is never exe if st is not equal to ""
			   String starr[]=null;
			   if(!st.equalsIgnoreCase(""))
			   {
				   starr = st.split(",");
			   }
			   
			   if(st!="")
			   {
				   System.out.println("THE FINAL ARRAY OF VALUES SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS "+st+" ==> "+starr.length);
			   }
			   
			   
			   
				   session.setAttribute("strArr", st); //this is where data is stored
			   
			   
			   request.setAttribute("str", st);
			  
			}
			catch(Exception e){
			    e.printStackTrace();
			}
		
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
