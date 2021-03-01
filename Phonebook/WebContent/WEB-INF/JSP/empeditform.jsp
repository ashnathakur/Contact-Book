<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
        <h1>Edit Employee</h1>  
       <form:form method="POST" action="/Phonebook/editsave">    
        <table >    
        <tr>  
        <td></td>    
         <td><form:hidden  path="id" /></td>  
         </tr>   
         <tr>    
          <td>Name : </td>   
          <td><form:input path="name"  /></td>  
         </tr>    
         <tr>    
          <td>E-mail :</td>    
          <td><form:input path="email" /></td>  
         </tr>   
         <tr>    
          <td>City :</td>    
          <td><form:input path="city" /></td>  
         </tr>   
           <tr>    
          <td>Country :</td>    
          <td><form:input path="country" value=""/></td>  
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