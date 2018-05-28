<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<nav class="nav ">
        <div class="logo">
        	<img src="images/logo1.png">
        	<span>Welcom to PizzaHouse</span>
        </div>
        
        <div class="navigation-bar">
         
        	
         	<a href="menu">
                    <div class="navigation-list">Menu</div>
            </a>    
            <a href="accout">
                    <div class="navigation-list">Account</div>
            </a>
            
           	<a href="bought">
           		<div class="navigation-list">Myorder</div>
           	</a>
           	
            <a href="cart">
            <div class="navigation-list">
            	<span style="color:#000000;margin:0px" class="glyphicon glyphicon-shopping-cart"></span>
            	cart<strong>${cartTotalItemNumber}</strong>
            	</div>
           	</a>   
            
</nav>