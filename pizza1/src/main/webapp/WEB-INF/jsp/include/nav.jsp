<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<nav class="top ">
        <a href="${contextPath}">
            <span style="color:#C40000;margin:0px" class=" glyphicon glyphicon-home redColor"></span>
            Home
        </a> 
         
        <span>Welcom to PizzaHouse</span>
         
        <c:if test="${!empty user}">
            <a href="login.jsp">${user.name}</a>
            <a href="forelogout">logout</a>    
        </c:if>
         
        <c:if test="${empty user}">
            <a href="login.jsp">login</a>
            <a href="register.jsp">sign on</a>    
        </c:if>
 
        <span class="pull-right">
            <a href="forebought">myorder</a>
            <a href="forecart">
            <span style="color:#C40000;margin:0px" class=" glyphicon glyphicon-shopping-cart redColor"></span>
            cart<strong>${cartTotalItemNumber}</strong></a>      
        </span>
         
</nav>