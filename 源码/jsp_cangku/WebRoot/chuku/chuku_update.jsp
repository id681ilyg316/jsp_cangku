<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>

<%
DBO db=new DBO();//声明 数据库链接类
request.setCharacterEncoding("UTF-8");// 设置页面的字符集
ResultSet rs=null;//定义查询结果集
String sql="";//定义要查询的 sql语句变量
int row=1;//定义返回执行update 结果集变量
	String keyid=(String)request.getParameter("keyid"); 
		String sp=(String)request.getParameter("sp");//变量：商品
String jg=(String)request.getParameter("jg");//变量：价格
String sl=(String)request.getParameter("sl");//变量：数量
String ms=(String)request.getParameter("ms");//变量：描述
String czr=(String)request.getParameter("czr");//变量：操作人
String cksj=(String)request.getParameter("cksj");//变量：出库时间

/*
.出库修改后台页面
*/	
 
sql="update chuku set sp='"+sp+"',jg='"+jg+"',sl='"+sl+"',ms='"+ms+"',czr='"+czr+"',cksj='"+cksj+"' where ckid='"+keyid+"'";
//拼接sql语句
 //int row=0;

try{
		
			
		 row=db.update(sql);//执行sql语句
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){//操作成功
out.println("<script>");
out.println("alert('操作成功');");
out.println("window.location='chukulist.jsp'");
out.println("</script>");
}else{//操作失败
out.println("<script>");
out.println("alert('操作失败');");
out.println("window.location='chukulist.jsp'");
out.println("</script>");
}
db.close();
%>

