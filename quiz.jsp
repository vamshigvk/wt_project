
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        
        <script type="text/javascript">
        var sessionTimeout = 1800;	
        
        function DisplaySessionTimeout()
        {
            window.history.go(+1);
            sessionTimeout = sessionTimeout - 1;
            //document.getElementById("val").innerHTML=sessionTimeout;
            
            //if session is not less than 0
            if (sessionTimeout >= 0)
                {
                //call the function again after 1 minute delay
                
               window.setTimeout("DisplaySessionTimeout()",1000);
                }    
            else
            {
                //show message box
                //document.getElementById("val").innerHTML="TIME OUT";
                alert("Your current Session is over.");
                setTimeout(document.form1.sub.click());
            }
        }
        
 
<!-- 
// 
 var milisec=0 
 var seconds=30 
 document.form1.d2.value='30' 

function display()
{ 
 if (milisec<=0){ 
    milisec=60 
    seconds-=1 
 } 
 if (seconds<=-1){ 
    milisec=0 
    seconds+=1 
 } 
 else 
    milisec-=1 
    document.form1.d2.value=seconds+"M : "+milisec+" S"
    setTimeout("display()",1000) 
} 

--> 

</script>
        
    </head>
    <body onLoad="javascript:display();DisplaySessionTimeout();">
        
        <%
        String pid=request.getParameter("pid");
             %>
    <center><form name="form1" action="examserv" method="post">
            <font size="10">
            <input type="text" name="d2" value="" size="8"></font><br>
            <input type="hidden" name="pid" value="<%=pid%>"></center>
            
            
            <!questions!>
            <hr>
<h2>1. The length of the bridge, which a train 130 metres long and travelling at 45 km/hr can cross in 30 seconds, is:</h2>
			<br>
                        <input type="radio" name="a" value="a1">200m   &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        <input type="radio" name="a" value="a2" margin-left="500px"> 225m<br>
			<input type="radio" name="a" value="a3">245m   &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
			<input type="radio" name="a" value="a4">250m<br>
			
		<hr>	<h2>2.From a point P on a level ground, the angle of elevation of the top tower is 30º. If the tower is 100 m high, the distance of point P from the foot of the tower is:</h2>
			<br>
			<input type="radio" name="b" value="a1">149m    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
			<input type="radio" name="b" value="a2">156m <br>
			<input type="radio" name="b" value="a3">173m    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        <input type="radio" name="b" value="a4">200m<br>
			
		<hr><h2>	3.  .How much time will it take for an amount of Rs. 450 to yield Rs. 81 as interest at 4.5% per annum of simple interest?</h2>
			<br>
			<input type="radio" name="c" value="a1">3.5 years <br>
			<input type="radio" name="c" value="a2">4 years<br>
			<input type="radio" name="c" value="a3"> 4 years<br>
			<input type="radio" name="c" value="a4">4.5 years<br>
			
	<hr>	<h2>	4.3 pumps, working 8 hours a day, can empty a tank in 2 days. How many hours a day must 4 pumps work to empty the tank in 1 day?	</h2>
			<br>
			
			<input type="radio" name="d" value="a1">9<br>
			<input type="radio" name="d" value="a2">10<br>
			<input type="radio" name="d" value="a3">11<br>
			<input type="radio" name="d" value="a4">12<br>
			
	<hr>	<h2>5.Alfred buys an old scooter for Rs. 4700 and spends Rs. 800 on its repairs. If he sells the scooter for Rs. 5800, his gain percent is:</h2>
			<br>
			<input type="radio" name="e" value="a1">4 4/7%<br>
			<input type="radio" name="e" value="a2">5 5/11%<br>
			<input type="radio" name="e" value="a3">10%<br>
			<input type="radio" name="e" value="a4">12%<br>
			
	<hr>	<h2>	6.A batsman scored 110 runs which included 3 boundaries and 8 sixes. What percent of his total score did he make by running between the wickets? </h2>
			<br>
			<input type="radio" name="f" value="a1">45% <br>
			<input type="radio" name="f" value="a2">45 5/11%<br>
			<input type="radio" name="f" value="a3">54 6/11%<br>
			<input type="radio" name="f" value="a4">55% <br>
			
	<hr>	<h2>	7.It was Sunday on Jan 1, 2006. What was the day of the week Jan 1, 2010? </h2>
			<br>
			<input type="radio" name="g" value="a1">sunday<br>
			<input type="radio" name="g" value="a2">saturday <br>
			<input type="radio" name="g" value="a3">friday<br>
			<input type="radio" name="g" value="a4">wednesday  <br>
			
	<hr>	<h2>	8.A grocer has a sale of Rs. 6435, Rs. 6927, Rs. 6855, Rs. 7230 and Rs. 6562 for 5 consecutive months. How much sale must he have in the sixth month so that he gets an average sale of Rs. 6500?</h2>
			<br>
			<input type="radio" name="h" value="a1"> RS.4991<br>
			<input type="radio" name="h" value="a2">RS.5991<br>
			<input type="radio" name="h" value="a3">RS.6001<br>
			<input type="radio" name="h" value="a4">RS.6991<br>
			
	<hr>		<h2>9.A hall is 15 m long and 12 m broad. If the sum of the areas of the floor and the ceiling is equal to the sum of the areas of four walls, the volume of the hall is:</h2>
			<br>
			<input type="radio" name="i" value="a1">720<br>
			<input type="radio" name="i" value="a2">900<br>
			<input type="radio" name="i" value="a3">1200<br>
			<input type="radio" name="i" value="a4">1800<br>
			
	<hr>	<h2>	10.What least number must be added to 1056, so that the sum is completely divisible by 23 ?</h2>
			<br>
			<input type="radio" name="j" value="a1">2<br>
			<input type="radio" name="j" value="a2">3 <br>
			<input type="radio" name="j" value="a3">18<br>
			<input type="radio" name="j" value="a4">21<br>
			
	<hr>	<h2>	11.A man has Rs. 480 in the denominations of one-rupee notes, five-rupee notes and ten-rupee notes. The number of notes of each denomination is equal. What is the total number of notes that he has ?</h2>
			<br>
			<input type="radio" name="k" value="a1">45<br>
			<input type="radio" name="k" value="a2">60 <br>
			<input type="radio" name="k" value="a3">75<br>
			<input type="radio" name="k" value="a4">90<br>
			
	<hr>	<h2>	12.If (a/b)^(x - 1)=(b/a)^(x - 3), then the value of x is:</h2>
			<br>
			<input type="radio" name="l" value="a1">1/2<br>
			<input type="radio" name="l" value="a2">1<br>
			<input type="radio" name="l" value="a3">2<br>
			<input type="radio" name="l" value="a4">7/2<br>
			
	<hr>	<h2>	13.A boat can travel with a speed of 13 km/hr in still water. If the speed of the stream is 4 km/hr, find the time taken by the boat to go 68 km downstream.</h2>
			<br>
			<input type="radio" name="m" value="a1">2hours<br>
			<input type="radio" name="m" value="a2">3hours<br>
			<input type="radio" name="m" value="a3">4hours<br>
			<input type="radio" name="m" value="a4">5hours<br>
			
	<hr>	<h2>	14.Which of the following statements is not correct?</h2>
			<br>
			<input type="radio" name="n" value="a1">log10 10 = 1<br>
			<input type="radio" name="n" value="a2">log (2 + 3) = log (2 x 3)<br>
			<input type="radio" name="n" value="a3">log10 1 = 0<br>
			<input type="radio" name="n" value="a4">log (1 + 2 + 3) = log 1 + log 2 + log 3<br>
			
	<hr>	<h2>	15.In order to obtain an income of Rs. 650 from 10% stock at Rs. 96, one must make an investment of:</h2>
			<br>
			<input type="radio" name="o" value="a1">RS.3100<br>
			<input type="radio" name="o" value="a2">RS.6240<br>
			<input type="radio" name="o" value="a3">RS.6500<br>
			<input type="radio" name="o" value="a4">RS.9600<br>
			
	<hr>	<h2>	16.A trader owes a merchant Rs. 10,028 due 1 year hence. The trader wants to settle the account after 3 months. If the rate of interest 12% per annum, how much cash should he pay?</h2>
			<br>
                        <input type="radio" name="p" value="a1">Rs. 9025.20<br>
			<input type="radio" name="p" value="a2">Rs. 9200<br>
			<input type="radio" name="p" value="a3">Rs. 9600<br>
			<input type="radio" name="p" value="a4">Rs. 9560<br>
			
	<hr>	<h2>	17. Find the odd man out.
 	3, 5, 11, 14, 17, 21</h2>
			<br>
			<input type="radio" name="q" value="a1">21<br>
			<input type="radio" name="q" value="a2">17<br>
			<input type="radio" name="q" value="a3">14<br>
			<input type="radio" name="q" value="a4">3<br>
			
	<hr>	<h2>	18.A person crosses a 600 m long street in 5 minutes. What is his speed in km per hour?</h2>
			<br>
			<input type="radio" name="r" value="a1">3.6<br>
			<input type="radio" name="r" value="a2">7.2<br>
			<input type="radio" name="r" value="a3">8.4<br>
			<input type="radio" name="r" value="a4">10<br>
			
	<hr>	<h2>	19.A can do a work in 15 days and B in 20 days. If they work on it together for 4 days, then the fraction of the work that is left is :</h2>
			<br>
			<input type="radio" name="s" value="a1">1/4<br>
			<input type="radio" name="s" value="a2">1/10<br>
			<input type="radio" name="s" value="a3">7/15<br>
                        <input type="radio" name="s" value="a4">8/15<br>
	<hr>	<h2>	20.A and B invest in a business in the ratio 3 : 2. If 5% of the total profit goes to charity and A's share is Rs. 855, the total profit is:</h2>
			<br>
            <input type="radio" name="t" value="a1">RS.1425<br>
			<input type="radio" name="t" value="a2">RS.1500<br>
			<input type="radio" name="t" value="a3">RS.1537.50<br>
			<input type="radio" name="t" value="a4">RS.1576<br>
			
	<hr>	<h2>	21.Father is aged three times more than his son Ronit. After 8 years, he would be two and a half times of Ronit's age. After further 8 years, how many times would he be of Ronit's age?</h2>
			<br>
			<input type="radio" name="u" value="a1">2 times<br>
			<input type="radio" name="u" value="a2">2.5 times<br>
			<input type="radio" name="u" value="a3">2.75 times <br>
			<input type="radio" name="u" value="a4">3 times<br>
			
	<hr>	<h2>	22.A clock is started at noon. By 10 minutes past 5, the hour hand has turned through:</h2>
			<br>
			<input type="radio" name="v" value="a1">145 degrees<br>
			<input type="radio" name="v" value="a2">150 degrees<br>
			<input type="radio" name="v" value="a3">155 degrees<br>
			<input type="radio" name="v" value="a4">160 degrees<br>
			
	<hr>	<h2>	23.An error 2% in excess is made while measuring the side of a square. The percentage of error in the calculated area of the square is:</h2>
			<br>
			<input type="radio" name="w" value="a1">2%<br>
			<input type="radio" name="w" value="a2">2.02%<br>
			<input type="radio" name="w" value="a3">4%<br>
			<input type="radio" name="w" value="a4">4.04%<br>
			
	<hr>	<h2>	24.From a group of 7 men and 6 women, five persons are to be selected to form a committee so that at least 3 men are there on the committee. In how many ways can it be done?</h2>
			<br>
			<input type="radio" name="x" value="a1">564<br>
			<input type="radio" name="x" value="a2">645<br>
			<input type="radio" name="x" value="a3">735<br>
			<input type="radio" name="x" value="a4">756<br>
			
	<hr>	<h2>	25.If one-third of one-fourth of a number is 15, then three-tenth of that number is:</h2>
			<br>
			<input type="radio" name="y" value="a1"> 35<br>
			<input type="radio" name="y" value="a2">36<br>
			<input type="radio" name="y" value="a3">45<br>
			<input type="radio" name="y" value="a4">54<br>
			
	<hr>	<h2>	26.Evaluate :	((2.39)^2-(1.61)^2)/(2.39 - 1.61)</h2>
			<br>
			<input type="radio" name="z" value="a1">2<br>
			<input type="radio" name="z" value="a2">4<br>
			<input type="radio" name="z" value="a3">6<br>
			<input type="radio" name="z" value="a4">8<br>
			
	<hr>	<h2>	27.The cube root of .000216 is:</h2>
			<br>
			<input type="radio" name="aa" value="a1">0.6<br>
			<input type="radio" name="aa" value="a2">0.06<br>
			<input type="radio" name="aa" value="a3">77<br>
			<input type="radio" name="aa" value="a4">87<br>
			
	<hr>	<h2>	28.A and B together have Rs. 1210. If   of A's amount is equal to   of B's amount, how much amount does B have?</h2>
			<br>
			
			<input type="radio" name="bb" value="a1">RS.460<br>
			<input type="radio" name="bb" value="a2">RS.848<br>
			<input type="radio" name="bb" value="a3">RS.550<br>
			<input type="radio" name="bb" value="a4">RS.664<br>
			
		<hr><h2>	29.Pipes A and B can fill a tank in 5 and 6 hours respectively. Pipe C can empty it in 12 hours. If all the three pipes are opened together, then the tank will be filled in:</h2>
			<br>
			<input type="radio" name="cc" value="a1">1 13/17<br>
			<input type="radio" name="cc" value="a2">2 8/11<br>
			<input type="radio" name="cc" value="a3">3 9/17<br>
			<input type="radio" name="cc" value="a4">4 1/2<br><hr>
			
		<h2>	30.A vessel is filled with liquid, 3 parts of which are water and 5 parts syrup. How much of the mixture must be drawn off and replaced with water so that the mixture may be half water and half syrup?</h2>
            <input type="radio" name="dd" value="a1">7<br>
			<input type="radio" name="dd" value="a2">1/3<br>
			<input type="radio" name="dd" value="a3">1/4<br>
			<input type="radio" name="dd" value="a4">1/5<br>
                        <input type="radio" name="dd" value="a4">1/7<br>
                        <hr>
                        <input type="submit" value="Submit Test" name="sub">
            <input type="reset" value="cancel">
        </form>
            <h1><a href="index.html">Logout</a></h1>
 </body>                
</html>
