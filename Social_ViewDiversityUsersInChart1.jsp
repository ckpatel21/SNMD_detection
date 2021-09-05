				
<%@ include file="connect.jsp"%>


<%
String sname= (String)application.getAttribute("asname");
String s11,pname="",uploader="";
int i=0,count=0;
try
{
			


%><html>
<head>
<title>Diversity users In Chart..</title>
<script type="text/javascript" src="sources/jscharts.js"></script>
</head>
<body>
<div id="graph">Loading graph...</div>
<script type="text/javascript">
var myData=new Array();
var colors=[];

<%

String query="select distinct pname,uploader from comments where sname='"+sname+"'"; 
Statement st=connection.createStatement();
ResultSet rs=st.executeQuery(query);
while ( rs.next() )
{

	pname=rs.getString(1);
	uploader=rs.getString(2);
	
String query1="select count(cmt_by) from comments where pname='"+pname+"' and uploader='"+uploader+"' and sname='"+sname+"'"; 
Statement st1=connection.createStatement();
ResultSet rs1=st1.executeQuery(query1);
while ( rs1.next() )
{
	
	count=rs1.getInt(1);
	
	%>
	
	myData["<%=i%>"]=["<%= pname%>",<%= count%>];
        
	<%
	}
	i++;}
	%>
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#FF3333');
	myChart.setBarOpacity(0.8);
	myChart.setBarBorderColor('#D9EDF7');
	myChart.setBarValues(true);
	myChart.setTitleColor('#8C8383');
	myChart.setAxisColor('#777E89');
	myChart.setAxisValuesColor('#000000');
	myChart.draw();
	
</script>

</body>
</html>
<%

}
catch(Exception e)
{
e.printStackTrace();
}
%>

