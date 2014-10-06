<meta http-equiv="refresh" content="30">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>




<%

String chkstr = (String) request.getAttribute("str");

String pricefromserver = (String) session.getAttribute("strArr");


//setAttribute("strArr", st); 

%>


<script>

var str = '<%=chkstr%>';

//alert("str ==> "+str);

str = str.substring(0,(str.length-1));

//alert(" new str ==> "+str);

var getArr = str.split(",");


</script>




<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="jQuery.js"></script>
<script>

var r1=0,r2=0,r3=0,r4=0,r5=0,r6=0,r7=0,r8=0,r9=0,r10=0,r11=0,r12=0;

var dis;
function funcdecide()
{
	dis = '';

	document.getElementById('decision').value=dis;
	//alert("dis ==> "+dis);
}

var redObj= new Image();
redObj.src = "red.png";

</script>
</head>
<body onload="init();">

 
    
    






<table id="ajaxtabid"  border="0" style="margin-left: 200px;margin-top: 1px" >
<tr>
<td>

 
      

<table border="0" style="margin-left: 1px;margin-top: 1px">
<tr>
<td width="860px" height="40px">


<div style="margin-left: 200px;margin-top: 40px">
    <canvas id="myCanvas" style="margin-left: 100px;margin-top: 10px;border:1px solid #d3d3d3;"  width="800" height="500">
        Your browser does not support the HTML5 canvas tag.
    </canvas>
    <canvas id="myCanvas1" style="margin-left: 100px;margin-top: 10px;border:1px solid #d3d3d3;"  width="800" height="500">
        Your browser does not support the HTML5 canvas tag.
    </canvas>
</div>
<br>
<br>



    <style>

        canvas {
            position: absolute;
            top: 1px;
            left: 1px;
            background: transparent;
        }

       
        #myCanvas {
            z-index: 0;
        }

		#myCanvas1 {
		
		z-index: 1;
		}
      
        </style>

    <script>

		  var c ;
        var ctx ;
		var c4;
		var ctx4;
        
        function mouseD(e)
    	{
    		//alert("got in down "+e.pageX+" "+e.pageY);
    		
    	}
        
        var dateObj;
        function init()
        {
        	
        	
        	dateObj = new Date();
            //alert("inside init "+dateObj.getHours()+" "+dateObj.getMinutes()+" "+dateObj.getSeconds());
            graphObj= new Image();
            graphObj.src = "graph.png";
            
            graphObj1= new Image();
            graphObj1.src = "graph.png";
            
            graphObj2= new Image();
            graphObj2.src = "graph.png";
            
 				graphObj3= new Image();
            graphObj3.src = "graph.png";
            
             graphObj4= new Image();
            graphObj4.src = "graph.png";
            
				c= document.getElementById("myCanvas");
            ctx = c.getContext("2d"); 
            

            
            c4 = document.getElementById("myCanvas1");
            ctx4 = c4.getContext("2d");
            
            ctx4.globalAlpha=0.5;
            
           
            
				ctx.font="15px Georgia";
            //ctx.fillText("Previous Close",10,187);  
            
            //ctx.fillText("Today Open",140,187);       
            
 //            ctx.fillText("Volume",260,187); 
             
 	//			ctx.fillText("Capital",340,187);  
 
  		//		ctx.fillText("Dividend",420,187);        
            
  		
  		c.addEventListener("mousedown", mouseD, false);
  		
            graphObj.onload = function () {
           		 
           		 //alert("ok");
           		 graphObj.height=31;
       			 graphObj.width=38;
       			ctx.drawImage(graphObj, 150, 430);
           		 //38 31
           	 }      
           	 
           	 graphObj1.onload = function () {
           		 
           		 //alert("ok");
           		 graphObj1.height=31;
       			 graphObj1.width=38;
       			ctx.drawImage(graphObj, 250, 430);
           		 
           	 }      
           	 
           	 graphObj2.onload = function () {
           		 
           		 //alert("ok");
           		 graphObj2.height=31;
       			 graphObj2.width=38;
       			ctx.drawImage(graphObj, 350, 430);
           		 
           	 }  
           	 
 				graphObj3.onload = function () {
           		 
           		 //alert("ok");
           		 graphObj3.height=31;
       			 graphObj3.width=38;
       			ctx.drawImage(graphObj, 450, 430);
           		 
           	 }  
           	 
           	  graphObj4.onload = function () {
           		 
           		 //alert("ok");
           		 graphObj4.height=31;
       			 graphObj4.width=38;
       			ctx.drawImage(graphObj, 550, 430);
           		 
           	 }  
           	 
            
           	funcChangeStock();
           	  
           	
           	var canvas = document.getElementById('myCanvas');
            var context = canvas.getContext('2d');

            ctx.beginPath(); //for x axis
            ctx.moveTo(20, 10);
            ctx.lineTo(20, 450);
            ctx.stroke();
            
            
            
            ctx.beginPath(); //for y axis
            ctx.moveTo(20, 450);
            ctx.lineTo(600, 450);
            ctx.stroke();
            
            ctx.beginPath();
            ctx.moveTo(20, 330);
            ctx.lineTo(30, 330);
            ctx.stroke();
            
            ctx.fillText("100",30,330); 
            
            ctx.beginPath();
            ctx.moveTo(20, 380);
            ctx.lineTo(30, 380);
            ctx.stroke();
            
            ctx.fillText("50",30,380); 
            
            ctx.beginPath();
            ctx.moveTo(20, 280);
            ctx.lineTo(30, 280);
            ctx.stroke();
            
            ctx.fillText("150",30,280); 
           	
            ctx.beginPath();
            ctx.moveTo(20, 230);
            ctx.lineTo(30, 230);
            ctx.stroke();
            
            ctx.fillText("200",30,230); 
            
            ctx.beginPath();
            ctx.moveTo(20, 180);
            ctx.lineTo(30, 180);
            ctx.stroke();
            
            ctx.fillText("250",30,180); 
            
            ctx.beginPath();
            ctx.moveTo(20, 80);
            ctx.lineTo(30, 80);
            ctx.stroke();
            
            ctx.fillText("350",30,80); 
            
            ctx.beginPath();
            ctx.moveTo(20, 130);
            ctx.lineTo(30, 130);
            ctx.stroke();
            
            ctx.fillText("300",30,130); 
        }

		        
        var intervalObj; //Timer cant be set common
   		var intervalObj1;
   		var intervalObj2;
   		var intervalObj3;
   		var intervalObj4;
   	    var indexincrease=0;  		
		var indexincrease1=0;
		var indexincrease2=0;
		var indexincrease3=0;
		var indexincrease4=0;

        var increasethegraphby=430;//intial value, then decrease by 10
		var increasethegraphby1=430;//intial value, then decrease by 10
		var increasethegraphby2=430;//intial value, then decrease by 10
		var increasethegraphby3=430;//intial value, then decrease by 10
		var increasethegraphby4=430;//intial value, then decrease by 10
        
        function funcG()
        {

				//alert("inside function "); 
				indexincrease=0;
				intervalObj=setInterval(function(){timerFunc()},70);       
        
			}


						//alert("dividenEnd "+dividenEnd+" marketCap "+marketCap+" volumeT "+volumeT+" todaysOpen "+todaysOpen+" priceVal "+priceVal);

						
		function showLine(opt,px,py)
		{
		
			
			
			if(opt=="1")
				{
				ctx.beginPath();
				
				//alert("okkkkkkkkkkkkkkkkkkkkk "+increasethegraphby+" "+increasethegraphby2);
				
    			ctx.moveTo(150, (increasethegraphby));
    			ctx.lineTo(200, (increasethegraphby1));
    			ctx.stroke();
    			ctx.fillText(priceVal,150,(increasethegraphby-40));
    			ctx.fillText(todaysOpen,200,(increasethegraphby1-20));
    			
				}
			if(opt=="2")
			{

				ctx.beginPath();
				
				//alert("okkkkkkkkkkkkkkkkkkkkk "+increasethegraphby1+" "+increasethegraphby2);
				
				ctx.moveTo(200, (increasethegraphby1));
    			ctx.lineTo(250, (increasethegraphby2));
    			ctx.stroke();
    			
    			ctx.fillText(volumeT,250,(increasethegraphby2-20));
    			
			}
			if(opt=="3")
			{
				ctx.beginPath();
				ctx.moveTo(250, (increasethegraphby2));
    			ctx.lineTo(300, (increasethegraphby3));
    			ctx.stroke();
    			
    			ctx.fillText(marketCap,300,(increasethegraphby3-20));
    			
			}
			if(opt=="4")
			{
				ctx.beginPath();
		
				ctx.moveTo(300, (increasethegraphby3));
    			ctx.lineTo(350, (increasethegraphby4));
    			ctx.stroke();
    			
    			ctx.fillText(dividenEnd,350,(increasethegraphby4-20));
    			
			}
			
				
			
		}
		
		var call=0;
		var hourVal;
		var minuteVal;
		var secondsVal;
		var datePutValue;
		var minutePutValue;
		var secondsPutValue;
		function setTheCall()
		{
			call+=1;
			
			if(call==5)
			{
				//alert(" OKKKKKKKKKKKKKKKKKK "+increasethegraphby+" "+increasethegraphby1+" "+increasethegraphby2+" "+increasethegraphby3+" "+increasethegraphby4);
				
				ctx.beginPath();
				ctx.moveTo(150, (increasethegraphby));
    			ctx.lineTo(250, (increasethegraphby1));
    			ctx.stroke();
    			
    			ctx.fillText(priceVal,150,(increasethegraphby-40));
    			ctx.fillText(todaysOpen,250,(increasethegraphby1-20));
    			
    			 ctx4.drawImage(redObj, 140, (increasethegraphby-10));
     			ctx4.drawImage(redObj, 240, (increasethegraphby1-10));
    			
     			hourVal = dateObj.getHours();
     			minuteVal = dateObj.getMinutes();
     			secondsVal = dateObj.getSeconds();
     			
     			dateObj.setSeconds((dateObj.getSeconds()-30), 1);
     			
     			hourVal1 = dateObj.getHours();
     			minuteVal1 = dateObj.getMinutes();
     			secondsVal1 = dateObj.getSeconds();
     			
     			dateObj.setSeconds((dateObj.getSeconds()-30), 1);
     			
     			hourVal2 = dateObj.getHours();
     			minuteVal2 = dateObj.getMinutes();
     			secondsVal2 = dateObj.getSeconds();
     			
     			dateObj.setSeconds((dateObj.getSeconds()-30), 1);
     			
     			hourVal3 = dateObj.getHours();
     			minuteVal3 = dateObj.getMinutes();
     			secondsVal3 = dateObj.getSeconds();
     			
     			dateObj.setSeconds((dateObj.getSeconds()-30), 1);
     			
     			hourVal4 = dateObj.getHours();
     			minuteVal4 = dateObj.getMinutes();
     			secondsVal4 = dateObj.getSeconds();
     			
     			dateObj.setSeconds((dateObj.getSeconds()-30), 1);
     			
    			ctx.beginPath();
				ctx.moveTo(250, (increasethegraphby1));
    			ctx.lineTo(350, (increasethegraphby2));
    			ctx.stroke();
    			
    			ctx.fillText(volumeT,350,(increasethegraphby2-20));
    			
    			ctx4.drawImage(redObj, 340, (increasethegraphby2-10));
    			
    			ctx.beginPath();
				ctx.moveTo(350, (increasethegraphby2));
    			ctx.lineTo(450, (increasethegraphby3));
    			ctx.stroke();
    			
    			ctx.fillText(marketCap,450,(increasethegraphby3-20));
    			
    			ctx4.drawImage(redObj, 440, (increasethegraphby3-10));
    			
    			ctx.beginPath();
				ctx.moveTo(450, (increasethegraphby3));
    			ctx.lineTo(550, (increasethegraphby4));
    			ctx.stroke();
    			
    			ctx.fillText(dividenEnd,550,(increasethegraphby4-20));
    			
    			ctx4.drawImage(redObj, 540, (increasethegraphby4-10));
    			
    			putExactTime(hourVal,minuteVal,secondsVal,hourVal1,minuteVal1,secondsVal1,hourVal2,minuteVal2,secondsVal2,hourVal3,minuteVal3,secondsVal3,hourVal4,minuteVal4,secondsVal4);
    			
			}
			
		}
		
		function putExactTime(h,m,s,h1,m1,s1,h2,m2,s2,h3,m3,s3,h4,m4,s4)
		{
			//alert(" ==========>  "+h+" "+m+" "+s);
		
			
			
			
			ctx.fillText(h4+" : ",150,(468));
			ctx.fillText(m4+" : ",180,(468));
			ctx.fillText(s4,212,(468));
			
			ctx.fillText(h3+" : ",262,(468));
			ctx.fillText(m3+" : ",292,(468));
			ctx.fillText(s3,322,(468));
			
			ctx.fillText(h2+" : ",372,(468));
			ctx.fillText(m2+" : ",402,(468));
			ctx.fillText(s2,432,(468));
			
			ctx.fillText(h1+" : ",482,(468));
			ctx.fillText(m1+" : ",512,(468));
			ctx.fillText(s1,542,(468));
			
			ctx.fillText(h+" : ",592,(468));
			ctx.fillText(m+" : ",622,(468));
			ctx.fillText(s,652,(468));
			
			
		}
						
			function timerFunc(priceVal)
			{
				//alert("ok");
				indexincrease+=1;
				increasethegraphby-=1;//decrease y the value by 10 now, this value depends on the input data
				//ctx.drawImage(graphObj, 150, increasethegraphby);
				
				
				if(indexincrease==priceVal)//modified data should be from database for proper graph display
				{
					//alert("complete drawing graph "+increasethegraphby);
					
					//These are the values that are required to be shown
					
						//alert("priceVal "+priceVal);
					 	//ctx.beginPath();
            			//ctx.moveTo(150, (increasethegraphby));
            			//ctx.lineTo(160, (increasethegraphby));
            			//ctx.stroke();
            			
            			setTheCall();
					
            		
            			
            			
            		
            			
					
					clearInterval(intervalObj);
				}
			}
			
	function timerFunc1(todaysOpen)
			{
				//alert("ok "+increasethegraphby+" "+increasethegraphby1);
				indexincrease1+=1;
				increasethegraphby1-=1;//decrease y the value by 10 now, this value depends on the input data
				//ctx.drawImage(graphObj1, 200, increasethegraphby1);
				
				
				if(indexincrease1==todaysOpen)//modified data should be from database for proper graph display
				{
					//ctx.beginPath();
        			//ctx.moveTo(200, (increasethegraphby1));
        			//ctx.lineTo(210, (increasethegraphby1));
        			//ctx.stroke();
        			
        			
        			
        			//showLine("1",200,increasethegraphby1);
        			setTheCall();
					//alert("complete drawing graph");
					clearInterval(intervalObj1);
				}
			}
			
				function timerFunc2(volumeT)
			{
				//alert("ok");
				indexincrease2+=1;
				increasethegraphby2-=1;//decrease y the value by 10 now, this value depends on the input data
				//ctx.drawImage(graphObj2, 250, increasethegraphby2);
				
				
				if(indexincrease2==volumeT)//modified data should be from database for proper graph display
				{
					//ctx.beginPath();
        			//ctx.moveTo(250, (increasethegraphby2));
        			//ctx.lineTo(260, (increasethegraphby2));
        			//ctx.stroke();
        			
        			//showLine("2",250,increasethegraphby2);
        			setTheCall();
					//alert("complete drawing graph");
					clearInterval(intervalObj2);
				}
			}
			
				function timerFunc3(marketCap)
			{
				//alert("ok");
				indexincrease3+=1;
				increasethegraphby3-=1;//decrease y the value by 10 now, this value depends on the input data
				//ctx.drawImage(graphObj3, 300, increasethegraphby3);
				
				
				if(indexincrease3==marketCap)//modified data should be from database for proper graph display
				{
					
					//ctx.beginPath();
        			//ctx.moveTo(300, (increasethegraphby3));
        			//ctx.lineTo(310, (increasethegraphby3));
        			//ctx.stroke();
        			
        			//showLine("3",300,increasethegraphby3);
        			setTheCall();
					//alert("complete drawing graph");
					clearInterval(intervalObj3);
				}
			}
			
	function timerFunc4(dividenEnd)
			{
				//alert("ok");
				indexincrease4+=1;
				increasethegraphby4-=1;//decrease y the value by 10 now, this value depends on the input data
				//ctx.drawImage(graphObj4, 350, increasethegraphby4);
				
				
				if(indexincrease4==dividenEnd)//modified data should be from database for proper graph display
				{
					
        			//ctx.beginPath();
        			//ctx.moveTo(350, (increasethegraphby4));
        			//ctx.lineTo(360, (increasethegraphby4));
        			//ctx.stroke();
        			
        			//showLine("4",350,increasethegraphby4);
        			setTheCall();
					//alert("complete drawing graph");
					clearInterval(intervalObj4);
				}
				
				showL();
			}

	//showLine();	
	

	
			var dividenEnd="1.79";
			var marketCap="10.6";
			var volumeT="2.24";
			var todaysOpen="18.22";
			var priceVal="17.42";			
			
			
			function funcStock()
			{
				
				alert("got in the function");
			}
			
			
			
			function funcChangeStock()
			{

				/*ctx.drawImage(graphObj, 20, 140);
				ctx.drawImage(graphObj, 150, 140);
				ctx.drawImage(graphObj, 260, 140);
				ctx.drawImage(graphObj, 346, 140);
				ctx.drawImage(graphObj, 20, 140);*/

			    

  					indexincrease=0;  		
					indexincrease1=0;
					indexincrease2=0;
					indexincrease3=0;
					indexincrease4=0;				
				
				/*var v = document.getElementById('optid');
			   var v2 = v.options[v.selectedIndex].value;
			
				if(v2=='MSFT') //sample value that comes from the database
				{
						dividenEnd="1.79";
						marketCap="10.6";
						volumeT="2.24";
						todaysOpen="18.22";
						priceVal="17.22";
				}
				if(v2=='AAPL') //sample value that comes from the database
				{
						dividenEnd="2.79";
						marketCap="11.6";
						volumeT="2.24";
						todaysOpen="20.22";
						priceVal="19.22";
				}
				if(v2=='NVDA') //sample value that comes from the database
				{
						dividenEnd="1";
						marketCap="10.6";
						volumeT="3.24";
						todaysOpen="17.22";
						priceVal="16.22";
				}*/
				
					//alert("dividenEnd "+dividenEnd+" marketCap "+marketCap+" volumeT "+volumeT+" todaysOpen "+todaysOpen+" priceVal "+priceVal);
					
				 
	           
					var v1 = parseInt(getArr[0]);
					var v2 = parseInt(getArr[1]);
					var v3 = parseInt(getArr[2]);
					var v4 = parseInt(getArr[3]);
					var v5 = parseInt(getArr[4]);
					var v6 = parseInt(getArr[5]);
					
					var w1 = Math.round(v1/10);
					var w2 = Math.round(v2/10);
					var w3 = Math.round(v3/10);
					var w4 = Math.round(v4/10);
					var w5 = Math.round(v5/10);
					var w6 = Math.round(v6/10);
					
					//alert(" w1 "+v1+" w2 "+v2+" w3 "+v3+" w4 "+v4+" w5 "+v5+" w6 "+v6);
					
					
					
			        dividenEnd=v1;
			        marketCap=v2;
		            volumeT=v3;
			        todaysOpen=v4;
			        priceVal=v5;	
			        intervalObj5=0;
			        
					indexincrease=0;
				    intervalObj=setInterval(function(){timerFunc(priceVal)},5); //testing purpose
			   	    intervalObj1=setInterval(function(){timerFunc1(todaysOpen)},5);
					intervalObj2=setInterval(function(){timerFunc2(volumeT)},5);
					intervalObj3=setInterval(function(){timerFunc3(marketCap)},5);
					intervalObj4=setInterval(function(){timerFunc4(dividenEnd)},5);
					
					//intervalObj5=setInterval(function(){showL(dividenEnd)},30);
					
			}
			
			
			

    </script>
</td>
</tr>

<tr>
<td width="860px" height="280px">


</input>

</td>
</tr>
</table>



<table border="0" style="margin-left: 1px;margin-top: 1px">
<tr>
<td width="100px" height="100px">
<!--<input type="button" value="Refresh" onclick="funcG();">-->
<div style="margin-top: 40px">
<img src="hint_button.png" onclick="hintFunc();"></img>
</div>


</td>
<td>

</td>
<td>
<!--  <select name="optid" id="optid" onchange="funcChangeStock()">
<option value="AAPL">APPLE</option>
<option value="MSFT">MICROSOFT</option>
<option value="NVDA">NVIDIA</option>
</select> -->
</td>

<td width="760px" height="100px">
<div id="hintid" style="margin-left: 2px;margin-top: 180px;visibility: visible;">

Choose the Companies <select name="optid" id="optid" onchange="funcStock();">
<option value="1">Microsoft</option>
<option value="2">Apple</option>
<option value="3">Abbott</option>
<option value="4">DHL</option>
<option value="4">Nvidia</option>
</select>



</div>
</td>

</tr>
</table>

</td>
</tr>
</table>

<table border="0" style="margin-left: 200px;margin-top: 1px">

<tr>

<td width="15px" height="50px">
<img src="pause_button.png" onclick="stopTimerFunc();"></img>
</td>
<td width="747px" height="50px">
<div style="margin-left: 340px">
<font id="fntid"></font>
</div>
</td>

<td width="15px" height="50px">
<!-- <a href="Level2.php">-->
<img src="skip_question.png" id="" onclick="nextclick();"></img>
<!--  </a>-->
</td>

</tr>

</table>




</body>



</html>
