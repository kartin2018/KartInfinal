<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" errorPage="errpage.jsp"%>
<%
int otp= (Integer) session.getAttribute("number");
String otpvalue=request.getParameter("otpvalue");
int enterOtp=Integer.parseInt(otpvalue);
if(otp==enterOtp)
{
try
{
response.sendRedirect("change.jsp");	
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
}
else
{%>
<script>
alert("OTP DOES NOT MATCH!!");
</script>

<%
response.sendRedirect("forget.jsp");
} %>