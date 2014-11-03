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

String strValOnOff = (String) session.getAttribute("strOnOff");
//setAttribute("strArr", st); 



%>


<script>

var str = '<%=chkstr%>';

var CheckForOnOff = '<%=strValOnOff%>';

//alert("CheckForOnOff ==> "+CheckForOnOff);

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
    <canvas id="myCanvas" style="margin-left: 100px;margin-top: 10px;border:1px solid #d3d3d3;"  width="1800" height="500">
        Your browser does not support the HTML5 canvas tag.
    </canvas>
    <canvas id="myCanvas1" style="margin-left: 100px;margin-top: 10px;border:1px solid #d3d3d3;"  width="1800" height="500">
        Your browser does not support the HTML5 canvas tag.
    </canvas>
    <canvas id="myCanvas2" style="margin-left: 100px;margin-top: 10px;border:1px solid #d3d3d3;" width="1800" height="500">
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
		
		#myCanvas2 {
		
		z-index: 2;
		}
      
        </style>

    <script>

		  var c ;
        var ctx ;
		var c4;
		var ctx4;
		var c6;
		var ctx6;
        
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
            
           c6=document.getElementById("myCanvas2");
           ctx6 = c6.getContext("2d");
           
           ctx6.globalAlpha=0.3;
           
				ctx.font="15px Georgia";
            //ctx.fillText("Previous Close",10,187);  
            
            //ctx.fillText("Today Open",140,187);       
            
 //            ctx.fillText("Volume",260,187); 
             
 	//			ctx.fillText("Capital",340,187);  
 
  		//		ctx.fillText("Dividend",420,187);        
            
  		
  		c.addEventListener("mousedown", mouseD, false);
  		
  		var blackimg= new Image();
  		blackimg.src = "blackimg.png";
  		
  		blackimg.onload = function () {
      		
  			ctx6.drawImage(blackimg, 140, 0);

      	 }   
  		
  		 ctx6.drawImage(blackimg, 140, 0);
  		
           /* graphObj.onload = function () {
           		 
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
           		 
           	 }  */
           	 
            
           	funcChangeStock();
           	  
           	
           	var canvas = document.getElementById('myCanvas');
            var context = canvas.getContext('2d');

            ctx.beginPath(); //for x axis
            ctx.moveTo(20, 10);
            ctx.lineTo(20, 450);
            ctx.stroke();
            
            
            
            ctx.beginPath(); //for y axis
            ctx.moveTo(20, 450);
            ctx.lineTo(1500, 450);
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

		        
        /*var intervalObj; //Timer cant be set common
   		var intervalObj1;
   		var intervalObj2;
   		var intervalObj3;*/
   		
   		var intervalObj,intervalObj1,intervalObj2,intervalObj3,intervalObj4,intervalObj5,intervalObj6,intervalObj7,intervalObj8,intervalObj9;
   		var intervalObj10,intervalObj11,intervalObj12,intervalObj13,intervalObj14,intervalObj15,intervalObj16,intervalObj17,intervalObj18,intervalObj19;
   		var intervalObj20,intervalObj21,intervalObj22,intervalObj23,intervalObj24,intervalObj25,intervalObj26,intervalObj27,intervalObj28,intervalObj29;
   		var intervalObj30,intervalObj31,intervalObj32,intervalObj33,intervalObj34,intervalObj35,intervalObj36,intervalObj37,intervalObj38,intervalObj39;
   		var intervalObj40,intervalObj41,intervalObj42,intervalObj43,intervalObj44,intervalObj45,intervalObj46,intervalObj47,intervalObj48,intervalObj49;
   		var intervalObj50,intervalObj51,intervalObj52,intervalObj53,intervalObj54,intervalObj55,intervalObj56,intervalObj57,intervalObj58,intervalObj59;
   		var intervalObj60,intervalObj61,intervalObj62,intervalObj63,intervalObj64,intervalObj65,intervalObj66,intervalObj67,intervalObj68,intervalObj69;
   		var intervalObj70,intervalObj71,intervalObj72,intervalObj73,intervalObj74,intervalObj75,intervalObj76,intervalObj77,intervalObj78,intervalObj79;
   		var intervalObj80,intervalObj81,intervalObj82,intervalObj83,intervalObj84,intervalObj85,intervalObj86,intervalObj87,intervalObj88,intervalObj89;
   		var intervalObj90,intervalObj91,intervalObj92,intervalObj93,intervalObj94,intervalObj95,intervalObj96,intervalObj97,intervalObj98,intervalObj99;
   		var intervalObj100;
   		
   	    var indexincrease=0,indexincrease1=0,indexincrease2=0,indexincrease3=0,indexincrease4=0,indexincrease5=0,indexincrease6=0,indexincrease7=0,indexincrease8=0,indexincrease9=0,indexincrease10=0;
		var indexincrease11=0,indexincrease12=0,indexincrease13=0,indexincrease14=0,indexincrease15=0,indexincrease16=0,indexincrease17=0,indexincrease18=0,indexincrease19=0,indexincrease20=0;
		var indexincrease21=0,indexincrease22=0,indexincrease23=0,indexincrease24=0,indexincrease25=0,indexincrease26=0,indexincrease27=0,indexincrease28=0,indexincrease29=0,indexincrease30=0;
		var indexincrease31=0,indexincrease32=0,indexincrease33=0,indexincrease34=0,indexincrease35=0,indexincrease36=0,indexincrease37=0,indexincrease38=0,indexincrease39=0,indexincrease40=0;
		var indexincrease41=0,indexincrease42=0,indexincrease43=0,indexincrease44=0,indexincrease45=0,indexincrease46=0,indexincrease47=0,indexincrease48=0,indexincrease49=0,indexincrease50=0;
		var indexincrease51=0,indexincrease52=0,indexincrease53=0,indexincrease54=0,indexincrease55=0,indexincrease56=0,indexincrease57=0,indexincrease58=0,indexincrease59=0,indexincrease60=0;
		var indexincrease61=0,indexincrease62=0,indexincrease63=0,indexincrease64=0,indexincrease65=0,indexincrease66=0,indexincrease67=0,indexincrease68=0,indexincrease69=0,indexincrease70=0;
		var indexincrease71=0,indexincrease72=0,indexincrease73=0,indexincrease74=0,indexincrease75=0,indexincrease76=0,indexincrease77=0,indexincrease78=0,indexincrease79=0,indexincrease80=0;
		var indexincrease81=0,indexincrease82=0,indexincrease83=0,indexincrease84=0,indexincrease85=0,indexincrease86=0,indexincrease87=0,indexincrease88=0,indexincrease89=0,indexincrease90=0;
		var indexincrease91=0,indexincrease92=0,indexincrease93=0,indexincrease94=0,indexincrease95=0,indexincrease96=0,indexincrease97=0,indexincrease98=0,indexincrease99=0,indexincrease100=0;
		
		
        var increasethegraphby=430,increasethegraphby1=430,increasethegraphby2=430,increasethegraphby3=430,increasethegraphby4=430,increasethegraphby5=430,increasethegraphby6=430,increasethegraphby7=430,increasethegraphby8=430,increasethegraphby9=430,increasethegraphby10=430;
        var increasethegraphby11=430,increasethegraphby12=430,increasethegraphby13=430,increasethegraphby14=430,increasethegraphby15=430,increasethegraphby16=430,increasethegraphby17=430,increasethegraphby18=430,increasethegraphby19=430,increasethegraphby20=430;
        var increasethegraphby21=430,increasethegraphby22=430,increasethegraphby23=430,increasethegraphby24=430,increasethegraphby25=430,increasethegraphby26=430,increasethegraphby27=430,increasethegraphby28=430,increasethegraphby29=430,increasethegraphby30=430;
        var increasethegraphby31=430,increasethegraphby32=430,increasethegraphby33=430,increasethegraphby34=430,increasethegraphby35=430,increasethegraphby36=430,increasethegraphby37=430,increasethegraphby38=430,increasethegraphby39=430,increasethegraphby40=430;
        var increasethegraphby41=430,increasethegraphby42=430,increasethegraphby43=430,increasethegraphby44=430,increasethegraphby45=430,increasethegraphby46=430,increasethegraphby47=430,increasethegraphby48=430,increasethegraphby49=430,increasethegraphby50=430;
        var increasethegraphby51=430,increasethegraphby52=430,increasethegraphby53=430,increasethegraphby54=430,increasethegraphby55=430,increasethegraphby56=430,increasethegraphby57=430,increasethegraphby58=430,increasethegraphby59=430,increasethegraphby60=430;
        var increasethegraphby61=430,increasethegraphby62=430,increasethegraphby63=430,increasethegraphby64=430,increasethegraphby65=430,increasethegraphby66=430,increasethegraphby67=430,increasethegraphby68=430,increasethegraphby69=430,increasethegraphby70=430;
        var increasethegraphby71=430,increasethegraphby72=430,increasethegraphby73=430,increasethegraphby74=430,increasethegraphby75=430,increasethegraphby76=430,increasethegraphby77=430,increasethegraphby78=430,increasethegraphby79=430,increasethegraphby80=430;
        var increasethegraphby81=430,increasethegraphby82=430,increasethegraphby83=430,increasethegraphby84=430,increasethegraphby85=430,increasethegraphby86=430,increasethegraphby87=430,increasethegraphby88=430,increasethegraphby89=430,increasethegraphby90=430;
        var increasethegraphby91=430,increasethegraphby92=430,increasethegraphby93=430,increasethegraphby94=430,increasethegraphby95=430,increasethegraphby96=430,increasethegraphby97=430,increasethegraphby98=430,increasethegraphby99=430,increasethegraphby100=430;
        
        /*var increasethegraphby3=430,increasethegraphby4=430,increasethegraphby5=430;
        var increasethegraphby=430,increasethegraphby1=430,increasethegraphby2=430,increasethegraphby3=430,increasethegraphby4=430,increasethegraphby5=430;
        var increasethegraphby=430,increasethegraphby1=430,increasethegraphby2=430,increasethegraphby3=430,increasethegraphby4=430,increasethegraphby5=430;
        var increasethegraphby=430,increasethegraphby1=430,increasethegraphby2=430,increasethegraphby3=430,increasethegraphby4=430,increasethegraphby5=430;
        var increasethegraphby=430,increasethegraphby1=430,increasethegraphby2=430,increasethegraphby3=430,increasethegraphby4=430,increasethegraphby5=430;
        var increasethegraphby=430,increasethegraphby1=430,increasethegraphby2=430,increasethegraphby3=430,increasethegraphby4=430,increasethegraphby5=430;
        var increasethegraphby=430,increasethegraphby1=430,increasethegraphby2=430,increasethegraphby3=430,increasethegraphby4=430,increasethegraphby5=430;*/
        
        
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
			
			if(call==40)
			{
				//alert(" OKKKKKKKKKKKKKKKKKK "+increasethegraphby+" "+increasethegraphby1+" "+v40+" "+v39);
				
				//alert(" ==> "+v0+" "+v1+" "+v2);
				
				//150 + 180 + 210 + 
				
				ctx.beginPath();
				ctx.moveTo(150, (increasethegraphby));
    			ctx.lineTo(180, (increasethegraphby1));
    			ctx.stroke();
    			
    			ctx.fillText(v40,150,(increasethegraphby-40));
    			//ctx.fillText(v1,180,(increasethegraphby1-20));
    			
    			ctx.fillText(v39,180,(increasethegraphby1-40));
    			
    			 ctx4.drawImage(redObj, 140, (increasethegraphby-10));
     			ctx4.drawImage(redObj, 170, (increasethegraphby1-10));
    			
     			dateObj2 = new Date();
     			
     			dateObj2.setHours(9, 0, 0, 0);
     			
     			var checkHourVal = dateObj2.getHours();
     			var checkMinutesVal = dateObj2.getMinutes();
     			var checkSecondsVal = dateObj2.getSeconds();
     			
     			//alert("test hour value ===> 1 "+checkHourVal+" "+checkMinutesVal+" "+checkSecondsVal);
     			
     			dateObj3 = new Date();
     			
     			dateObj3.setHours(10, 0, 0, 0);
     			
     			var checkHourVal2 = dateObj3.getHours();
     			var checkMinutesVal2 = dateObj3.getMinutes();
     			var checkSecondsVal2 = dateObj3.getSeconds();
     			
     			//alert("test hour value ===> 2 "+checkHourVal2+" "+checkMinutesVal2+" "+checkSecondsVal2);
     			
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
				ctx.moveTo(180, (increasethegraphby1));
    			ctx.lineTo(210, (increasethegraphby2));
    			ctx.stroke();
    			
    			ctx.fillText(v38,210,(increasethegraphby2-40));
    			
    			//ctx.fillText(v2,350,(increasethegraphby2-20));
    			
    			ctx4.drawImage(redObj, 200, (increasethegraphby2-10));
    			
    			ctx.beginPath();
				ctx.moveTo(210, (increasethegraphby2));
    			ctx.lineTo(240, (increasethegraphby3));
    			ctx.stroke();
    			
    			ctx.fillText(v37,240,(increasethegraphby3-40));
    			
    			//ctx.fillText(marketCap,450,(increasethegraphby3-20));
    			
    			ctx4.drawImage(redObj, 230, (increasethegraphby3-10));
    			
    			ctx.beginPath();
				ctx.moveTo(240, (increasethegraphby3));
    			ctx.lineTo(270, (increasethegraphby4));
    			ctx.stroke();
    			
    			ctx.fillText(v36,270,(increasethegraphby4-40));
    			
    			//ctx.fillText(dividenEnd,550,(increasethegraphby4-20));
    			
    			ctx4.drawImage(redObj, 260, (increasethegraphby4-10));
    			
    			ctx.beginPath();
				ctx.moveTo(270, (increasethegraphby4));
    			ctx.lineTo(300, (increasethegraphby5));
    			ctx.stroke();
    			
    			ctx.fillText(v35,300,(increasethegraphby5-40));
    			
    			ctx4.drawImage(redObj, 290, (increasethegraphby5-10));
    			
    			ctx.beginPath();
				ctx.moveTo(300, (increasethegraphby5));
    			ctx.lineTo(330, (increasethegraphby6));
    			ctx.stroke();
    			
    			ctx.fillText(v34,330,(increasethegraphby6-40));
    			
    			ctx4.drawImage(redObj, 320, (increasethegraphby6-10));
    			
    			ctx.beginPath();
				ctx.moveTo(330, (increasethegraphby6));
    			ctx.lineTo(360, (increasethegraphby7));
    			ctx.stroke();
    			
    			ctx.fillText(v33,360,(increasethegraphby7-40));
    			
    			ctx4.drawImage(redObj, 350, (increasethegraphby7-10));
    			
    			ctx.beginPath();
				ctx.moveTo(360, (increasethegraphby7));
    			ctx.lineTo(390, (increasethegraphby8));
    			ctx.stroke();
    			
    			ctx.fillText(v32,390,(increasethegraphby8-40));
    			
    			ctx4.drawImage(redObj, 380, (increasethegraphby8-10));
    			
    			ctx.beginPath();
				ctx.moveTo(390, (increasethegraphby8));
    			ctx.lineTo(420, (increasethegraphby9));
    			ctx.stroke();
    			
    			ctx.fillText(v31,420,(increasethegraphby9-40));
    			
    			ctx4.drawImage(redObj, 410, (increasethegraphby9-10));
    			
    			ctx.beginPath();
				ctx.moveTo(420, (increasethegraphby9));
    			ctx.lineTo(450, (increasethegraphby10));
    			ctx.stroke();
    			
    			ctx.fillText(v30,450,(increasethegraphby10-40));
    			
    			ctx4.drawImage(redObj, 440, (increasethegraphby10-10));
    			
    			ctx.beginPath();
				ctx.moveTo(450, (increasethegraphby10));
    			ctx.lineTo(480, (increasethegraphby11));
    			ctx.stroke();
    			
    			ctx.fillText(v29,480,(increasethegraphby11-40));
    			
    			ctx4.drawImage(redObj, 470, (increasethegraphby11-10));
    		
    			ctx.beginPath();
				ctx.moveTo(480, (increasethegraphby11));
    			ctx.lineTo(510, (increasethegraphby12));
    			ctx.stroke();
    			
    			ctx.fillText(v28,510,(increasethegraphby12-40));
    			
    			ctx4.drawImage(redObj, 500, (increasethegraphby12-10));
    			
    			ctx.beginPath();
				ctx.moveTo(510, (increasethegraphby12));
    			ctx.lineTo(540, (increasethegraphby13));
    			ctx.stroke();
    			
    			ctx.fillText(v27,540,(increasethegraphby13-40));
    			
    			ctx4.drawImage(redObj, 530, (increasethegraphby13-10));
    			
    			ctx.beginPath();
				ctx.moveTo(540, (increasethegraphby13));
    			ctx.lineTo(570, (increasethegraphby14));
    			ctx.stroke();
    			
    			ctx.fillText(v26,570,(increasethegraphby14-40));
    			
    			ctx4.drawImage(redObj, 560, (increasethegraphby14-10));
    			
    			ctx.beginPath();
				ctx.moveTo(570, (increasethegraphby14));
    			ctx.lineTo(600, (increasethegraphby15));
    			ctx.stroke();
    			
    			ctx.fillText(v25,600,(increasethegraphby15-40));
    			
    			ctx4.drawImage(redObj, 590, (increasethegraphby15-10));
    			
    			ctx.beginPath();
				ctx.moveTo(600, (increasethegraphby15));
    			ctx.lineTo(630, (increasethegraphby16));
    			ctx.stroke();
    			
    			ctx.fillText(v24,630,(increasethegraphby16-40));
    			
    			ctx4.drawImage(redObj, 620, (increasethegraphby16-10));
    			
    			ctx.beginPath();				ctx.moveTo(630, (increasethegraphby16));
    			ctx.lineTo(660, (increasethegraphby17));
    			ctx.stroke();
    			
    			ctx.fillText(v23,660,(increasethegraphby17-40));
    			
    			ctx4.drawImage(redObj, 650, (increasethegraphby17-10));
    			
    			ctx.beginPath();
				ctx.moveTo(660, (increasethegraphby17));
    			ctx.lineTo(690, (increasethegraphby18));
    			ctx.stroke();
    			
    			ctx.fillText(v22,690,(increasethegraphby18-40));
    			
    			ctx4.drawImage(redObj, 680, (increasethegraphby18-10));
    			
    			ctx.beginPath();
				ctx.moveTo(690, (increasethegraphby18));
    			ctx.lineTo(720, (increasethegraphby19));
    			ctx.stroke();
    			
    		
    			ctx.fillText(v21,720,(increasethegraphby19-40));
    			
    			ctx4.drawImage(redObj, 710, (increasethegraphby19-10));
    			
    			ctx.beginPath();
				ctx.moveTo(720, (increasethegraphby19));
    			ctx.lineTo(750, (increasethegraphby20));
    			ctx.stroke();
    			
    			/////////////////////////////////////////////////////////////////////////////
    			
				ctx.fillText(v20,750,(increasethegraphby20-40));
    			
    			ctx4.drawImage(redObj, 740, (increasethegraphby20-10));
    			
    			ctx.beginPath();
				ctx.moveTo(750, (increasethegraphby20));
    			ctx.lineTo(780, (increasethegraphby21));
    			ctx.stroke();
    			
				ctx.fillText(v19,780,(increasethegraphby21-40));
    			
    			ctx4.drawImage(redObj, 770, (increasethegraphby21-10));
    			
    			ctx.beginPath();
				ctx.moveTo(780, (increasethegraphby21));
    			ctx.lineTo(810, (increasethegraphby22));
    			ctx.stroke();
    			
				ctx.fillText(v18,810,(increasethegraphby22-40));
    			
    			ctx4.drawImage(redObj, 800, (increasethegraphby22-10));
    			
    			ctx.beginPath();
				ctx.moveTo(810, (increasethegraphby22));
    			ctx.lineTo(840, (increasethegraphby23));
    			ctx.stroke();
    			
				ctx.fillText(v17,840,(increasethegraphby23-40));
    			
    			ctx4.drawImage(redObj, 830, (increasethegraphby23-10));

    			
    			ctx.beginPath();
				ctx.moveTo(840, (increasethegraphby23));
    			ctx.lineTo(870, (increasethegraphby24));
    			ctx.stroke();
    			
				ctx.fillText(v16,870,(increasethegraphby24-40));
    			
    			ctx4.drawImage(redObj, 860, (increasethegraphby24-10));
    			
    			ctx.beginPath();
				ctx.moveTo(870, (increasethegraphby24));
    			ctx.lineTo(900, (increasethegraphby25));
    			ctx.stroke();
    			
				ctx.fillText(v15,900,(increasethegraphby25-40));
    			
    			ctx4.drawImage(redObj, 890, (increasethegraphby25-10));
    			
    			ctx.beginPath();
				ctx.moveTo(900, (increasethegraphby25));
    			ctx.lineTo(930, (increasethegraphby26));
    			ctx.stroke();
    			
				ctx.fillText(v14,930,(increasethegraphby26-40));
    			
    			ctx4.drawImage(redObj, 920, (increasethegraphby26-10));
    			
    			ctx.beginPath();
				ctx.moveTo(930, (increasethegraphby26));
    			ctx.lineTo(960, (increasethegraphby27));
    			ctx.stroke();
    			
				ctx.fillText(v13,960,(increasethegraphby27-40));
    			
    			ctx4.drawImage(redObj, 950, (increasethegraphby27-10));
    			
    			ctx.beginPath();
				ctx.moveTo(960, (increasethegraphby27));
    			ctx.lineTo(990, (increasethegraphby28));
    			ctx.stroke();
    			
				ctx.fillText(v12,990,(increasethegraphby28-40));
    			
    			ctx4.drawImage(redObj, 980, (increasethegraphby28-10));
    			
    			ctx.beginPath();
				ctx.moveTo(990, (increasethegraphby28));
    			ctx.lineTo(1020, (increasethegraphby29));
    			ctx.stroke();
    			
				ctx.fillText(v11,1020,(increasethegraphby29-40));
    			
    			ctx4.drawImage(redObj, 1010, (increasethegraphby29-10));
    			
    			ctx.beginPath();
				ctx.moveTo(1020, (increasethegraphby29));
    			ctx.lineTo(1050, (increasethegraphby30));
    			ctx.stroke();
    			
				ctx.fillText(v10,1050,(increasethegraphby30-40));
    			
    			ctx4.drawImage(redObj, 1040, (increasethegraphby30-10));
    			
    			ctx.beginPath();
				ctx.moveTo(1050, (increasethegraphby30));
    			ctx.lineTo(1080, (increasethegraphby31));
    			ctx.stroke();
    			
				ctx.fillText(v9,1080,(increasethegraphby31-40));
    			
    			ctx4.drawImage(redObj, 1070, (increasethegraphby31-10));
    			
    			ctx.beginPath();
				ctx.moveTo(1080, (increasethegraphby31));
    			ctx.lineTo(1110, (increasethegraphby32));
    			ctx.stroke();
    			
				ctx.fillText(v8,1110,(increasethegraphby32-40));
    			
    			ctx4.drawImage(redObj, 1100, (increasethegraphby32-10));
    			
    			
    			ctx.beginPath();
				ctx.moveTo(1110, (increasethegraphby32));
    			ctx.lineTo(1140, (increasethegraphby33));
    			ctx.stroke();
    			
				ctx.fillText(v7,1140,(increasethegraphby33-40));
    			
    			ctx4.drawImage(redObj, 1130, (increasethegraphby33-10));
    			
    			ctx.beginPath();
				ctx.moveTo(1140, (increasethegraphby33));
    			ctx.lineTo(1170, (increasethegraphby34));
    			ctx.stroke();
    			
				ctx.fillText(v6,1170,(increasethegraphby34-40));
    			
    			ctx4.drawImage(redObj, 1160, (increasethegraphby34-10));
    			
    			ctx.beginPath();
				ctx.moveTo(1170, (increasethegraphby34));
    			ctx.lineTo(1200, (increasethegraphby35));
    			ctx.stroke();
    			
				ctx.fillText(v5,1200,(increasethegraphby35-40));
    			
    			ctx4.drawImage(redObj, 1190, (increasethegraphby35-10));
    			
    			ctx.beginPath();
				ctx.moveTo(1200, (increasethegraphby35));
    			ctx.lineTo(1230, (increasethegraphby36));
    			ctx.stroke();
    			
				ctx.fillText(v4,1230,(increasethegraphby36-40));
    			
    			ctx4.drawImage(redObj, 1220, (increasethegraphby36-10));
    			
    			ctx.beginPath();
				ctx.moveTo(1230, (increasethegraphby36));
    			ctx.lineTo(1260, (increasethegraphby37));
    			ctx.stroke();
    			
				ctx.fillText(v3,1260,(increasethegraphby37-40));
    			
    			ctx4.drawImage(redObj, 1250, (increasethegraphby37-10));
    			
    			ctx.beginPath();
				ctx.moveTo(1260, (increasethegraphby37));
    			ctx.lineTo(1290, (increasethegraphby38));
    			ctx.stroke();
    			
				ctx.fillText(v2,1290,(increasethegraphby38-40));
    			
    			ctx4.drawImage(redObj, 1280, (increasethegraphby38-10));
    			
    			ctx.beginPath();
				ctx.moveTo(1290, (increasethegraphby38));
    			ctx.lineTo(1320, (increasethegraphby39));
    			ctx.stroke();
    			
				ctx.fillText(v1,1320,(increasethegraphby39-40));
    			
    			ctx4.drawImage(redObj, 1310, (increasethegraphby39-10));
    			
    			ctx.beginPath();
				ctx.moveTo(1320, (increasethegraphby39));
    			ctx.lineTo(1350, (increasethegraphby40));
    			ctx.stroke();
    			
				ctx.fillText(v0,1350,(increasethegraphby40-40));
    			
    			ctx4.drawImage(redObj, 1340, (increasethegraphby40-10));
    			
    			//alert("increase 17"+increasethegraphby17+"increasethegraphby18 "+increasethegraphby18+" increasethegraphby19 "+increasethegraphby19);
    			
    			putExactTime(checkHourVal,checkMinutesVal,checkSecondsVal,checkHourVal2,checkMinutesVal2,checkSecondsVal2,hourVal2,minuteVal2,secondsVal2,hourVal3,minuteVal3,secondsVal3,hourVal4,minuteVal4,secondsVal4);
    			
			}
			
		}
		
		function putExactTime(checkHourVal,checkMinutesVal,checkSecondsVal,checkHourVal2,checkMinutesVal2,checkSecondsVal2,h2,m2,s2,h3,m3,s3,h4,m4,s4)
		{
			//alert(" ==========>  "+h+" "+m+" "+s);
		
			
			ctx.fillText("Time in Seconds",30,468);
			
			
			
			var dateFinalObj = new Date();
			
			
			
			//alert("test object =========> "+dateFinalObj.getHours()+" "+dateFinalObj.getMinutes()+" "+dateFinalObj.getSeconds());
			
			var currentHourVal;
			var currentHourVal2;
			var currentMinuteVal;
			var currentMinuteVal2;
			var currentSecondsVal;
			var currentSecondsVal2;
			
			
			
			currentHourVal = dateFinalObj.getHours();
			
			currentMinuteVal =  dateFinalObj.getMinutes();
			
			currentSecondsVal = dateFinalObj.getSeconds();
			
			var dateFinalObj2 = new Date();
			
			dateFinalObj2.setHours((dateFinalObj.getHours()-1), 0, 0, 0);
			
			//dateFinalObj2.setHours(5, 0, 0, 0);
			
			currentHourVal2 = dateFinalObj2.getHours();
			
			currentMinuteVal2 = dateFinalObj2.getMinutes();
			
			currentSecondsVal2 = dateFinalObj2.getSeconds();
			
			if(currentHourVal==9)
			{
				//alert("ok in 12");
				checkHourVal=4;
				checkMinutesVal=0;
				checkSecondsVal=0;
				
				checkHourVal2=5;
				checkMinutesVal2=0;
				checkSecondsVal2=0;
				
			}
			else if(currentHourVal==10)
			{
				
				checkHourVal=5;
				checkMinutesVal=0;
				checkSecondsVal=0;
				
				checkHourVal2=9;
				checkMinutesVal2=0;
				checkSecondsVal2=0;
				
			}
			
			///////////////////////////////////////////////////////////////////////////////////////////////////
			checkHourVal="4";
			ctx.fillText(checkHourVal+" : ",100,(488));
			ctx.fillText(checkMinutesVal+" : ",130,(488));
			ctx.fillText(checkSecondsVal,162,(488));
			
			//ctx.fillText(h3+" : ",262,(468));
			//ctx.fillText(m3+" : ",292,(468));//210
			
			ctx.fillText("+30",180,(468));
			
			ctx.fillText("+30",210,(468));
			
			ctx.fillText("+30",240,(468));
			
			ctx.fillText("+30",270,(468));
			
			ctx.fillText("+30",300,(468));
			
			ctx.fillText("+30",330,(468));
			
			ctx.fillText("+30",360,(468));
			
			ctx.fillText("+30",390,(468));
			
			ctx.fillText("+30",420,(468));
			
			checkHourVal2="5";
			ctx.fillText(checkHourVal2+" : ",450,(488));
			ctx.fillText(checkMinutesVal2+" : ",480,(488));
			ctx.fillText(checkSecondsVal2,510,(488));
			
			ctx.fillText("+30",480,(468));
			
			ctx.fillText("+30",510,(468));
			
			ctx.fillText("+30",540,(468));
			
			ctx.fillText("+30",570,(468));
			
			ctx.fillText("+30",600,(468));
			
			ctx.fillText("+30",630,(468));
			
			ctx.fillText("+30",660,(468));
			
			ctx.fillText("+30",690,(468));
			
			ctx.fillText("+30",720,(468));
			
		
			ctx.fillText(currentHourVal2+" : ",750,(488));
			ctx.fillText(currentMinuteVal2+" : ",780,(488));
			ctx.fillText(currentSecondsVal2,810,(488));
			
			ctx.fillText("+30",780,(468));
			
			ctx.fillText("+30",810,(468));
			
			ctx.fillText("+30",840,(468));
			
			ctx.fillText("+30",870,(468));
			
			ctx.fillText("+30",900,(468));
			
			ctx.fillText("+30",930,(468));
			
			ctx.fillText("+30",960,(468));
			
			ctx.fillText("+30",990,(468));
			
			ctx.fillText("+30",1020,(468));
			
			ctx.fillText(currentHourVal+" : ",1050,(488));
			ctx.fillText(currentMinuteVal+" : ",1080,(488));
			ctx.fillText(currentSecondsVal,1110,(488));
			
			ctx.fillText("+30",1080,(468));
			
			ctx.fillText("+30",1110,(468));
			
			ctx.fillText("+30",1140,(468));
			
			ctx.fillText("+30",1170,(468));
			
			ctx.fillText("+30",1200,(468));
			
			ctx.fillText("+30",1230,(468));
			
			ctx.fillText("+30",1260,(468));
			
			ctx.fillText("+30",1290,(468));
			
			ctx.fillText("+30",1320,(468));
			
			/////////////////////////////////////////////////////////////////////////////////////////////////
			
			/*ctx.fillText(h2+" : ",372,(468));
			ctx.fillText(m2+" : ",402,(468));
			ctx.fillText(s2,432,(468));
			
			ctx.fillText(h1+" : ",482,(468));
			ctx.fillText(m1+" : ",512,(468));
			ctx.fillText(s1,542,(468));*/
			
			/*ctx.fillText(checkHourVal+" : ",592,(468));
			ctx.fillText(checkMinutesVal+" : ",622,(468));
			ctx.fillText(checkSecondsVal,652,(468));*/
			
			
		}
						
			function timerFunc(a11)
			{
				indexincrease+=1;
				increasethegraphby-=1;//decrease y the value by 10 now, this value depends on the input data
				//alert("check v20 2 "+v20);
				if(indexincrease==a11)//modified data should be from database for proper graph display
				{
				
            			
            		setTheCall();
					clearInterval(intervalObj);
				}
			}
			
	        function timerFunc1(a12)
			{
				indexincrease1+=1;
				increasethegraphby1-=1;//decrease y the value by 10 now, this value depends on the input data
				if(indexincrease1==a12)//modified data should be from database for proper graph display
				{
        			setTheCall();
					clearInterval(intervalObj1);
				}
			}
			
			function timerFunc2(a13)
			{
				
				indexincrease2+=1;
				increasethegraphby2-=1;//decrease y the value by 10 now, this value depends on the input data
				if(indexincrease2==a13)//modified data should be from database for proper graph display
				{
        			setTheCall();
					clearInterval(intervalObj2);
				}
			}
			
				function timerFunc3(a14)
			{
				indexincrease3+=1;
				increasethegraphby3-=1;//decrease y the value by 10 now, this value depends on the input data
				if(indexincrease3==a14)//modified data should be from database for proper graph display
				{
					
					
        			setTheCall();
        			clearInterval(intervalObj3);
				}
			}
			
	function timerFunc4(a15)
			{
				//alert("ok");
				indexincrease4+=1;
				increasethegraphby4-=1;//decrease y the value by 10 now, this value depends on the input data
			
				if(indexincrease4==a15)//modified data should be from database for proper graph display
				{
        			setTheCall();
					clearInterval(intervalObj4);
				}
				
				//
			}
	function timerFunc5(a16)
	{
		//alert("ok");
		indexincrease5+=1;
		increasethegraphby5-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease5==a16)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj5);
		}
		
		//showL();
	}
	function timerFunc6(a17)
	{
		//alert("ok");
		indexincrease6+=1;
		increasethegraphby6-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease6==a17)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj6);
		}
		
		//showL();
	}
	function timerFunc7(a18)
	{
		//alert("ok");
		indexincrease7+=1;
		increasethegraphby7-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease7==a18)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj7);
		}
		
		//showL();
	}
	function timerFunc8(a19)
	{
		//alert("ok");
		indexincrease8+=1;
		increasethegraphby8-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease8==a19)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj8);
		}
		
		//showL();
	}
	function timerFunc9(a20)
	{
		//alert("ok");
		indexincrease9+=1;
		increasethegraphby9-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease9==a20)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj9);
		}
		
		//showL();
	}
	function timerFunc10(a21)
	{
		//alert("ok");
		indexincrease10+=1;
		increasethegraphby10-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease10==a21)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj10);
		}
		
		//showL();
	}
	function timerFunc11(a22)
	{
		//alert("ok");
		indexincrease11+=1;
		increasethegraphby11-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease11==a22)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj11);
		}
		
		//showL();
	}
	function timerFunc12(a23)
	{
		//alert("ok");
		indexincrease12+=1;
		increasethegraphby12-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease12==a23)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj12);
		}
		
		//showL();
	}
	function timerFunc13(a24)
	{
		//alert("ok");
		indexincrease13+=1;
		increasethegraphby13-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease13==a24)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj13);
		}
		
		//showL();
	}
	function timerFunc14(a25)
	{
		//alert("ok");
		indexincrease14+=1;
		increasethegraphby14-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease14==a25)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj14);
		}
		
		showL();
	}
	function timerFunc15(a26)
	{
		//alert("ok");
		indexincrease15+=1;
		increasethegraphby15-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease15==a26)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj15);
		}
		
		
	}
	function timerFunc16(a27)
	{
		//alert("ok");
		indexincrease16+=1;
		increasethegraphby16-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease16==a27)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj16);
		}
		
		
	}
	function timerFunc17(a28)
	{
		//alert("ok");
		indexincrease17+=1;
		increasethegraphby17-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease17==a28)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj17);
		}
		
		
	}
	function timerFunc18(a29)
	{
		//alert("ok");
		indexincrease18+=1;
		increasethegraphby18-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease18==a29)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj18);
		}
		
		
	}
	function timerFunc19(a30)
	{
		//alert("ok");
		indexincrease19+=1;
		increasethegraphby19-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease19==a30)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj19);
		}
		
		
	}
	function timerFunc20(a31)
	{
		//alert("ok 20 "+v20);
		indexincrease20+=1;
		increasethegraphby20-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease20==a31)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj20);
		}
		
		
	}
	function timerFunc21(a32)
	{
		//alert("ok");
		indexincrease21+=1;
		increasethegraphby21-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease21==a32)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj21);
		}
		
		
	}
	function timerFunc22(a33)
	{
		//alert("ok");
		indexincrease22+=1;
		increasethegraphby22-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease22==a33)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj22);
		}
		
		
	}
	function timerFunc23(a34)
	{
		//alert("ok");
		indexincrease23+=1;
		increasethegraphby23-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease23==a34)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj23);
		}
		
		
	}
	function timerFunc24(a35)
	{
		//alert("ok");
		indexincrease24+=1;
		increasethegraphby24-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease24==a35)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj24);
		}
		
		
	}
	function timerFunc25(a36)
	{
		//alert("ok");
		indexincrease25+=1;
		increasethegraphby25-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease25==a36)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj25);
		}
		
		
	}
	function timerFunc26(a37)
	{
		//alert("ok");
		indexincrease26+=1;
		increasethegraphby26-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease26==a37)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj26);
		}
		
		
	}
	function timerFunc27(a38)
	{
		//alert("ok");
		indexincrease27+=1;
		increasethegraphby27-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease27==a39)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj27);
		}
		
		
	}
	function timerFunc28(a40)
	{
		//alert("ok");
		indexincrease28+=1;
		increasethegraphby28-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease28==a40)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj28);
		}
		
		
	}
	function timerFunc29(a41)
	{
		//alert("ok");
		indexincrease29+=1;
		increasethegraphby29-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease29==a41)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj29);
		}
		
		
	}
	function timerFunc30(a42)
	{
		//alert("ok");
		indexincrease30+=1;
		increasethegraphby30-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease30==a42)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj30);
		}
		
		
	}
	function timerFunc31(a43)
	{
		//alert("ok");
		indexincrease31+=1;
		increasethegraphby31-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease31==a43)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj31);
		}
		
		showL();
	}
	function timerFunc32(a44)
	{
		//alert("ok");
		indexincrease32+=1;
		increasethegraphby32-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease32==a44)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj32);
		}
		
		
	}
	function timerFunc33(a45)
	{
		//alert("ok");
		indexincrease33+=1;
		increasethegraphby33-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease33==a45)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj33);
		}
		
		
	}
	function timerFunc34(a46)
	{
		//alert("ok");
		indexincrease34+=1;
		increasethegraphby34-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease34==a46)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj34);
		}
		
		
	}
	function timerFunc35(a47)
	{
		//alert("ok");
		indexincrease35+=1;
		increasethegraphby35-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease35==a47)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj35);
		}
		
		
	}
	function timerFunc36(a48)
	{
		//alert("ok");
		indexincrease36+=1;
		increasethegraphby36-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease36==a48)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj36);
		}
		
		
	}
	function timerFunc37(a49)
	{
		//alert("ok");
		indexincrease37+=1;
		increasethegraphby37-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease37==a49)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj37);
		}
		
		
	}
	function timerFunc38(a50)
	{
		//alert("ok");
		indexincrease38+=1;
		increasethegraphby38-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease38==a50)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj38);
		}
		
		
	}
	function timerFunc39(a51)
	{
		//alert("ok");
		indexincrease39+=1;
		increasethegraphby39-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease39==a51)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj39);
		}
		
		
	}
	function timerFunc40(a52)
	{
		//alert("ok");
		indexincrease40+=1;
		increasethegraphby40-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease40==a52)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj40);
		}
		
		
	}
	function timerFunc41(v41)
	{
		//alert("ok");
		indexincrease41+=1;
		increasethegraphby41-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease41==v41)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj41);
		}
		
		
	}
	function timerFunc42(v42)
	{
		//alert("ok");
		indexincrease42+=1;
		increasethegraphby42-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease42==v42)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj42);
		}
		
		
	}
	function timerFunc43(v43)
	{
		//alert("ok");
		indexincrease43+=1;
		increasethegraphby43-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease43==v43)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj43);
		}
		
		
	}
	function timerFunc44(v44)
	{
		//alert("ok");
		indexincrease44+=1;
		increasethegraphby44-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease44==v44)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj44);
		}
		
		
	}
	function timerFunc45(v45)
	{
		//alert("ok");
		indexincrease45+=1;
		increasethegraphby45-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease45==v45)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj45);
		}
		
		
	}
	function timerFunc46(v46)
	{
		//alert("ok");
		indexincrease46+=1;
		increasethegraphby46-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease46==v46)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj46);
		}
		
		
	}
	function timerFunc47(v47)
	{
		//alert("ok");
		indexincrease47+=1;
		increasethegraphby47-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease47==v47)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj47);
		}
		
	
	}
	function timerFunc48(v48)
	{
		//alert("ok");
		indexincrease48+=1;
		increasethegraphby48-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease48==v48)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj48);
		}
		
		
	}
	function timerFunc49(v49)
	{
		//alert("ok");
		indexincrease49+=1;
		increasethegraphby49-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease49==v49)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj49);
		}
		
		
	}
	function timerFunc50(v50)
	{
		//alert("ok");
		indexincrease50+=1;
		increasethegraphby50-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease50==v50)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj50);
		}
		
		
	}
	function timerFunc51(v51)
	{
		//alert("ok");
		indexincrease51+=1;
		increasethegraphby51-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease51==v51)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj51);
		}
		
		
	}
	function timerFunc52(v52)
	{
		//alert("ok");
		indexincrease52+=1;
		increasethegraphby52-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease52==v52)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj52);
		}
		
		
	}
	function timerFunc53(v53)
	{
		//alert("ok");
		indexincrease53+=1;
		increasethegraphby53-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease53==v53)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj53);
		}
		
		
	}
	function timerFunc54(v54)
	{
		//alert("ok");
		indexincrease54+=1;
		increasethegraphby54-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease54==v54)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj54);
		}
		
		
	}
	function timerFunc55(v55)
	{
		//alert("ok");
		indexincrease55+=1;
		increasethegraphby55-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease55==v55)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj55);
		}
		
		
	}
	function timerFunc56(v56)
	{
		//alert("ok");
		indexincrease56+=1;
		increasethegraphby56-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease56==v56)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj56);
		}
		
		
	}
	function timerFunc57(v57)
	{
		//alert("ok");
		indexincrease57+=1;
		increasethegraphby57-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease57==v57)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj57);
		}
		
		
	}
	function timerFunc58(v58)
	{
		//alert("ok");
		indexincrease58+=1;
		increasethegraphby58-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease58==v58)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj58);
		}
		
		
	}
	function timerFunc59(v59)
	{
		//alert("ok");
		indexincrease59+=1;
		increasethegraphby59-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease59==v59)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj59);
		}
		
		
	}
	function timerFunc60(v60)
	{
		//alert("ok");
		indexincrease60+=1;
		increasethegraphby60-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease60==v60)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj60);
		}
		
		
	}
	function timerFunc61(v61)
	{
		//alert("ok");
		indexincrease61+=1;
		increasethegraphby61-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease61==v61)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj61);
		}
		
		
	}
	function timerFunc62(v62)
	{
		//alert("ok");
		indexincrease62+=1;
		increasethegraphby62-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease62==v62)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj62);
		}
		
		
	}
	function timerFunc63(v63)
	{
		//alert("ok");
		indexincrease63+=1;
		increasethegraphby63-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease63==v63)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj63);
		}
		
		
	}
	function timerFunc64(v64)
	{
		//alert("ok");
		indexincrease64+=1;
		increasethegraphby64-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease64==v64)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj64);
		}
		
		
	}
	function timerFunc65(v65)
	{
		//alert("ok");
		indexincrease65+=1;
		increasethegraphby65-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease65==v65)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj65);
		}
		
		
	}
	function timerFunc66(v66)
	{
		//alert("ok");
		indexincrease66+=1;
		increasethegraphby66-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease66==v66)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj66);
		}
		
		
	}
	function timerFunc67(v67)
	{
		//alert("ok");
		indexincrease67+=1;
		increasethegraphby67-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease67==v67)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj67);
		}
		
		
	}
	function timerFunc68(v68)
	{
		//alert("ok");
		indexincrease68+=1;
		increasethegraphby68-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease68==v68)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj68);
		}
		
		
	}
	function timerFunc69(v69)
	{
		//alert("ok");
		indexincrease69+=1;
		increasethegraphby69-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease69==v69)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj69);
		}
		
		
	}
	function timerFunc70(v70)
	{
		//alert("ok");
		indexincrease70+=1;
		increasethegraphby70-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease70==v70)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj70);
		}
		
		
	}
	function timerFunc71(v71)
	{
		//alert("ok");
		indexincrease71+=1;
		increasethegraphby71-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease71==v71)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj71);
		}
		
		
	}
	function timerFunc72(v72)
	{
		//alert("ok");
		indexincrease72+=1;
		increasethegraphby72-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease72==v72)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj72);
		}
		
		
	}
	function timerFunc73(v73)
	{
		//alert("ok");
		indexincrease73+=1;
		increasethegraphby73-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease73==v73)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj73);
		}
		
		
	}
	function timerFunc74(v74)
	{
		//alert("ok");
		indexincrease74+=1;
		increasethegraphby74-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease74==v74)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj74);
		}
		
		
	}
	function timerFunc75(v75)
	{
		//alert("ok");
		indexincrease75+=1;
		increasethegraphby75-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease75==v75)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj75);
		}
		
		
	}
	function timerFunc76(v76)
	{
		//alert("ok");
		indexincrease76+=1;
		increasethegraphby76-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease76==v76)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj76);
		}
		
		
	}
	function timerFunc77(v77)
	{
		//alert("ok");
		indexincrease77+=1;
		increasethegraphby77-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease77==v77)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj77);
		}
		
		
	}
	function timerFunc78(v78)
	{
		//alert("ok");
		indexincrease78+=1;
		increasethegraphby78-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease78==v78)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(indexincrease78);
		}
		
		
	}
	function timerFunc79(v79)
	{
		//alert("ok");
		indexincrease79+=1;
		increasethegraphby79-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease79==v79)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj79);
		}
		
		
	}
	function timerFunc80(v80)
	{
		//alert("ok");
		indexincrease80+=1;
		increasethegraphby80-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease80==v80)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj80);
		}
		
		
	}
	function timerFunc81(v81)
	{
		//alert("ok");
		indexincrease81+=1;
		increasethegraphby81-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease81==v81)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj81);
		}
		
		
	}
	function timerFunc82(v82)
	{
		//alert("ok");
		indexincrease82+=1;
		increasethegraphby82-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease82==v82)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj82);
		}
		
		
	}
	function timerFunc83(v83)
	{
		//alert("ok");
		indexincrease83+=1;
		increasethegraphby83-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease83==v83)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj83);
		}
		
		
	}
	function timerFunc84(v84)
	{
		//alert("ok");
		indexincrease84+=1;
		increasethegraphby84-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease84==v84)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj84);
		}
		
		
	}
	function timerFunc85(v85)
	{
		//alert("ok");
		indexincrease85+=1;
		increasethegraphby85-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease85==v85)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj85);
		}
		
		
	}
	function timerFunc86(v86)
	{
		//alert("ok");
		indexincrease86+=1;
		increasethegraphby86-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease86==v86)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj86);
		}
		
		
	}
	function timerFunc87(v87)
	{
		//alert("ok");
		indexincrease87+=1;
		increasethegraphby87-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease87==v87)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj87);
		}
		
		
	}
	function timerFunc88(v88)
	{
		//alert("ok");
		indexincrease88+=1;
		increasethegraphby88-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease88==v88)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj88);
		}
		
		
	}
	function timerFunc89(v89)
	{
		//alert("ok");
		indexincrease89+=1;
		increasethegraphby89-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease89==v89)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj89);
		}
		
		
	}
	function timerFunc90(v90)
	{
		//alert("ok");
		indexincrease90+=1;
		increasethegraphby90-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease90==v90)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj90);
		}
		
		
	}
	function timerFunc91(v91)
	{
		//alert("ok");
		indexincrease91+=1;
		increasethegraphby91-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease91==v91)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj91);
		}
		
		
	}
	function timerFunc92(v92)
	{
		//alert("ok");
		indexincrease92+=1;
		increasethegraphby92-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease92==v92)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj92);
		}
		
		
	}
	function timerFunc93(v93)
	{
		//alert("ok");
		indexincrease93+=1;
		increasethegraphby93-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease93==v93)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj93);
		}
		
		
	}
	function timerFunc94(v94)
	{
		//alert("ok");
		indexincrease94+=1;
		increasethegraphby94-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease94==v94)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj94);
		}
		
		
	}
	function timerFunc95(v95)
	{
		//alert("ok");
		indexincrease95+=1;
		increasethegraphby95-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease95==v95)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj95);
		}
		
		
	}
	function timerFunc96(v6)
	{
		//alert("ok");
		indexincrease96+=1;
		increasethegraphby96-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease96==v6)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj96);
		}
		
		
	}
	function timerFunc97(v97)
	{
		//alert("ok");
		indexincrease97+=1;
		increasethegraphby97-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease97==v97)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj97);
		}
		
		
	}
	function timerFunc98(v98)
	{
		//alert("ok");
		indexincrease98+=1;
		increasethegraphby98-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease98==v98)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj98);
		}
		
		
	}
	function timerFunc99(v99)
	{
		//alert("ok");
		indexincrease99+=1;
		increasethegraphby99-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease99==v99)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj99);
		}
		
		
	}
	function timerFunc100(v100)
	{
		//alert("ok");
		indexincrease100+=1;
		increasethegraphby100-=1;//decrease y the value by 10 now, this value depends on the input data
	
		if(indexincrease100==v100)//modified data should be from database for proper graph display
		{
			setTheCall();
			clearInterval(intervalObj100);
		}
		
		
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
			
			

		    var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30;
			var v31,v32,v33,v34,v35,v36,v37,v38,v39,v40,v41,v42,v43,v44,v45,v46,v47,v48,v49,v50,v51,v52,v53,v54,v55,v56,v57,v58,v59,v60;
			var v61,v62,v63,v64,v65,v66,v67,v68,v69,v70,v71,v72,v73,v74,v75,v76,v77,v78,v79,v80,v81,v82,v83,v84,v85,v86,v87,v88,v89,v90;
			var v91,v92,v93,v94,v95,v96,v97,v98,v99;
			
			
			var onoff="on";
			
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
					
				 
	           
			
				
				     v0 = parseInt(getArr[0]);	
					 v1 = parseInt(getArr[1]);
					 v2 = parseInt(getArr[2]);
					 v3 = parseInt(getArr[3]);
					 v4 = parseInt(getArr[4]);
					 v5 = parseInt(getArr[5]);
					 v6 = parseInt(getArr[6]);
					 v7 = parseInt(getArr[7]);
					 v8 = parseInt(getArr[8]);
					 v9 = parseInt(getArr[9]);
					 v10 = parseInt(getArr[10]);
					 v11 = parseInt(getArr[11]);
					 v12 = parseInt(getArr[12]);
					 v13 = parseInt(getArr[13]);
					 v14 = parseInt(getArr[14]);
					 v15 = parseInt(getArr[15]);
					 v16 = parseInt(getArr[16]);
					 v17 = parseInt(getArr[17]);
					 v18 = parseInt(getArr[18]);
					 v19 = parseInt(getArr[19]);
					 v20 = parseInt(getArr[20]);
					 
					 /////////////////////////////
					 
					 if(CheckForOnOff=="1")
					{
						 
						 //alert("checkForOnOff is on");

					 		
					}
					 else
						 {
						 //alert("checkForOnOff is off");
						 }
					 
					
					 v21 = parseInt(getArr[21]);
					 v22 = parseInt(getArr[22]);
					 v23 = parseInt(getArr[23]);
					 v24 = parseInt(getArr[24]);
					 v25 = parseInt(getArr[25]);
					 v26 = parseInt(getArr[26]);
					 v27 = parseInt(getArr[27]);
					 v28 = parseInt(getArr[28]);
					 v29 = parseInt(getArr[29]);
					 v30 = parseInt(getArr[30]);
					 v31 = parseInt(getArr[31]);
					 v32 = parseInt(getArr[32]);
					 v33 = parseInt(getArr[33]);
					 v34 = parseInt(getArr[34]);
					 v35 = parseInt(getArr[35]);
					 v36 = parseInt(getArr[36]);
					 v37 = parseInt(getArr[37]);
					 v38 = parseInt(getArr[38]);
					 v39 = parseInt(getArr[39]);
					 v40 = parseInt(getArr[40]);
					
					 
					 //////////////////////////////////////
					 v41 = parseInt(getArr[41]);
					 v42 = parseInt(getArr[42]);
					 v43 = parseInt(getArr[43]);
					 v44 = parseInt(getArr[44]);

					 v45 = parseInt(getArr[45]);
					 v46 = parseInt(getArr[46]);
					 v47 = parseInt(getArr[47]);
					 v48 = parseInt(getArr[48]);
					 v49 = parseInt(getArr[49]);
					 v50 = parseInt(getArr[50]);
					 v51 = parseInt(getArr[51]);
					 v52 = parseInt(getArr[52]);
					 v53 = parseInt(getArr[53]);
					 v54 = parseInt(getArr[54]);

					 v55 = parseInt(getArr[55]);
					 v56 = parseInt(getArr[56]);
					 v57 = parseInt(getArr[57]);
					 v58 = parseInt(getArr[58]);
					 v59 = parseInt(getArr[59]);
					 v60 = parseInt(getArr[60]);
					 v61 = parseInt(getArr[61]);
					 v62 = parseInt(getArr[62]);
					 v63 = parseInt(getArr[63]);
					 v64 = parseInt(getArr[64]);

					 v65 = parseInt(getArr[65]);
					 v66 = parseInt(getArr[66]);
					 v67 = parseInt(getArr[67]);
					 v68 = parseInt(getArr[68]);
					 v69 = parseInt(getArr[69]);
					 v70 = parseInt(getArr[70]);
					 v71 = parseInt(getArr[71]);
					 v72 = parseInt(getArr[72]);
					 v73 = parseInt(getArr[73]);
					 v74 = parseInt(getArr[74]);

					 v75 = parseInt(getArr[75]);
					 v76 = parseInt(getArr[76]);
					 v77 = parseInt(getArr[77]);
					 v78 = parseInt(getArr[78]);
					 v79 = parseInt(getArr[79]);
					 v80 = parseInt(getArr[80]);
					 v81 = parseInt(getArr[81]);
					 v82 = parseInt(getArr[82]);
					 v83 = parseInt(getArr[83]);
					 v84 = parseInt(getArr[84]);

					 v85 = parseInt(getArr[85]);
					 v86 = parseInt(getArr[86]);
					 v87 = parseInt(getArr[87]);
					 v88 = parseInt(getArr[88]);
					 v89 = parseInt(getArr[89]);
					 v90 = parseInt(getArr[90]);
					 v91 = parseInt(getArr[91]);
					 v92 = parseInt(getArr[92]);
					 v93 = parseInt(getArr[93]);
					 v94 = parseInt(getArr[94]);
					 v95 = parseInt(getArr[95]);
					 v96 = parseInt(getArr[96]);
					 v97 = parseInt(getArr[97]);
					 v98 = parseInt(getArr[98]);
					 v99 = parseInt(getArr[99]);
					
						
					
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
			        
			        //alert("v20 "+v20+" v19 "+v19+" v18 "+v18+" v17 "+v17+" v16 "+v16+" v15 "+v15+" v14 "+v14+" v13 "+v13+" v12 "+v12+" v11 "+v11+" v10 "+v10);
			        
			        //alert(" check 20 1 "+v20);
			        
					indexincrease=0;
				    intervalObj=setInterval(function(){timerFunc(v40)},5); //testing purpose
			   	    intervalObj1=setInterval(function(){timerFunc1(v39)},5);
					intervalObj2=setInterval(function(){timerFunc2(v38)},5);
					intervalObj3=setInterval(function(){timerFunc3(v37)},5);
					intervalObj4=setInterval(function(){timerFunc4(v36)},5);
					intervalObj5=setInterval(function(){timerFunc5(v35)},5);
					intervalObj6=setInterval(function(){timerFunc6(v34)},5);
					intervalObj7=setInterval(function(){timerFunc7(v33)},5);
					intervalObj8=setInterval(function(){timerFunc8(v32)},5);
					intervalObj9=setInterval(function(){timerFunc9(v31)},5);
					intervalObj10=setInterval(function(){timerFunc10(v30)},5);
					intervalObj11=setInterval(function(){timerFunc11(v29)},5);
					intervalObj12=setInterval(function(){timerFunc12(v28)},5);
					intervalObj13=setInterval(function(){timerFunc13(v27)},5);
					intervalObj14=setInterval(function(){timerFunc14(v26)},5);
					intervalObj15=setInterval(function(){timerFunc15(v25)},5);
					intervalObj16=setInterval(function(){timerFunc16(v24)},5);
					intervalObj17=setInterval(function(){timerFunc17(v23)},5);
					intervalObj18=setInterval(function(){timerFunc18(v22)},5);
					intervalObj19=setInterval(function(){timerFunc19(v21)},5);
					intervalObj20=setInterval(function(){timerFunc20(v20)},5);
					intervalObj21=setInterval(function(){timerFunc21(v19)},5);
					intervalObj22=setInterval(function(){timerFunc22(v18)},5);
					intervalObj23=setInterval(function(){timerFunc23(v17)},5);
					intervalObj24=setInterval(function(){timerFunc24(v16)},5);
					intervalObj25=setInterval(function(){timerFunc25(v15)},5);
					intervalObj26=setInterval(function(){timerFunc26(v14)},5);
					intervalObj27=setInterval(function(){timerFunc27(v13)},5);
					intervalObj28=setInterval(function(){timerFunc28(v12)},5);
					intervalObj29=setInterval(function(){timerFunc29(v11)},5);
					intervalObj30=setInterval(function(){timerFunc30(v10)},5);
					intervalObj31=setInterval(function(){timerFunc31(v9)},5);
					intervalObj32=setInterval(function(){timerFunc32(v8)},5);
					intervalObj33=setInterval(function(){timerFunc33(v7)},5);
					intervalObj34=setInterval(function(){timerFunc34(v6)},5);
					intervalObj35=setInterval(function(){timerFunc35(v5)},5);
					intervalObj36=setInterval(function(){timerFunc36(v4)},5);
					intervalObj37=setInterval(function(){timerFunc37(v3)},5);
					intervalObj38=setInterval(function(){timerFunc38(v2)},5);
					intervalObj39=setInterval(function(){timerFunc39(v1)},5);
					intervalObj40=setInterval(function(){timerFunc40(v0)},5);
					/*intervalObj41=setInterval(function(){timerFunc41(v41)},5);
					intervalObj42=setInterval(function(){timerFunc42(v42)},5);
					intervalObj43=setInterval(function(){timerFunc43(v43)},5);
					intervalObj44=setInterval(function(){timerFunc44(v44)},5);
					intervalObj45=setInterval(function(){timerFunc45(v45)},5);
					intervalObj46=setInterval(function(){timerFunc46(v46)},5);
					intervalObj47=setInterval(function(){timerFunc47(v47)},5);
					intervalObj48=setInterval(function(){timerFunc48(v48)},5);
					intervalObj49=setInterval(function(){timerFunc49(v49)},5);
					intervalObj50=setInterval(function(){timerFunc50(v50)},5);
					intervalObj51=setInterval(function(){timerFunc51(v51)},5);
					intervalObj52=setInterval(function(){timerFunc52(v52)},5);
					intervalObj53=setInterval(function(){timerFunc53(v53)},5);
					intervalObj54=setInterval(function(){timerFunc54(v54)},5);
					intervalObj55=setInterval(function(){timerFunc55(v55)},5);
					intervalObj56=setInterval(function(){timerFunc56(v56)},5);
					intervalObj57=setInterval(function(){timerFunc57(v57)},5);
					intervalObj58=setInterval(function(){timerFunc58(v58)},5);
					intervalObj59=setInterval(function(){timerFunc59(v59)},5);
					intervalObj60=setInterval(function(){timerFunc60(v60)},5);
					intervalObj61=setInterval(function(){timerFunc61(v61)},5);
					intervalObj62=setInterval(function(){timerFunc62(v62)},5);
					intervalObj63=setInterval(function(){timerFunc63(v63)},5);
					intervalObj64=setInterval(function(){timerFunc64(v64)},5);
					intervalObj65=setInterval(function(){timerFunc65(v65)},5);
					intervalObj66=setInterval(function(){timerFunc66(v66)},5);
					intervalObj67=setInterval(function(){timerFunc67(v67)},5);
					intervalObj68=setInterval(function(){timerFunc68(v68)},5);
					intervalObj69=setInterval(function(){timerFunc69(v69)},5);
					intervalObj70=setInterval(function(){timerFunc70(v70)},5);
					intervalObj71=setInterval(function(){timerFunc71(v71)},5);
					intervalObj72=setInterval(function(){timerFunc72(v72)},5);
					intervalObj73=setInterval(function(){timerFunc73(v73)},5);
					intervalObj74=setInterval(function(){timerFunc74(v74)},5);
					
					intervalObj75=setInterval(function(){timerFunc75(v75)},5);	
					intervalObj76=setInterval(function(){timerFunc76(v76)},5);
					intervalObj77=setInterval(function(){timerFunc77(v77)},5);
					intervalObj78=setInterval(function(){timerFunc78(v78)},5);
					intervalObj79=setInterval(function(){timerFunc79(v79)},5);
					intervalObj80=setInterval(function(){timerFunc80(v80)},5);
					intervalObj81=setInterval(function(){timerFunc81(v81)},5);
					intervalObj82=setInterval(function(){timerFunc82(v82)},5);
					intervalObj83=setInterval(function(){timerFunc83(v83)},5);
					intervalObj84=setInterval(function(){timerFunc84(v84)},5);
					intervalObj85=setInterval(function(){timerFunc85(v85)},5);
					intervalObj86=setInterval(function(){timerFunc86(v86)},5);
					intervalObj87=setInterval(function(){timerFunc87(v87)},5);
					intervalObj88=setInterval(function(){timerFunc88(v88)},5);
					intervalObj89=setInterval(function(){timerFunc89(v89)},5);
					intervalObj90=setInterval(function(){timerFunc90(v90)},5);
					intervalObj91=setInterval(function(){timerFunc91(v91)},5);
					intervalObj92=setInterval(function(){timerFunc92(v92)},5);
					intervalObj93=setInterval(function(){timerFunc93(v93)},5);
					intervalObj94=setInterval(function(){timerFunc94(v94)},5);
					intervalObj95=setInterval(function(){timerFunc95(v95)},5);
					intervalObj96=setInterval(function(){timerFunc96(v96)},5);
					intervalObj97=setInterval(function(){timerFunc97(v97)},5);
					intervalObj98=setInterval(function(){timerFunc98(v98)},5);
					intervalObj99=setInterval(function(){timerFunc99(v99)},5);*/
					//intervalObj100=setInterval(function(){timerFunc100(v100)},5);
					
					//intervalObj4=setInterval(function(){timerFunc4(v4)},5);
					
					
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
<!--  <img src="hint_button.png" onclick="hintFunc();"></img>-->
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
<!--  <img src="pause_button.png" onclick="stopTimerFunc();"></img>-->
</td>
<td width="747px" height="50px">
<div style="margin-left: 340px">
<font id="fntid"></font>
</div>
</td>

<td width="15px" height="50px">
<!-- <a href="Level2.php">-->
<!--  <img src="skip_question.png" id="" onclick="nextclick();"></img> -->
<!--  </a>-->
</td>

</tr>

</table>




</body>



</html>
