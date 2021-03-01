<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
        <h1>Add New Employee</h1>  
       <form:form method="post" action="save">    
        <table >    
         <tr>    
          <td>Name : </td>   
          <td><form:input path="name"  /></td>  
         </tr>    
         <tr>    
          <td>E-mail :</td>    
          <td><form:input path="email" value=""/></td>  
         </tr>  
         <tr>    
          <td>City :</td>    
          <td><form:input path="city" value=""/></td>  
         </tr>  
         <tr>    
          <td>Country :</td>    
          <td><form:input path="country" /></td>  
         </tr>   
         <tr>    
          <td>Contact :</td>    
          <td><form:input path="contact" value=""/></td>  
         </tr> 
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Save" /></td>    
         </tr>    
        </table>    
       </form:form>  
