<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:forEach items="${listaOradores}" var="orador">
    <tr>
       <td>${orador.nombre}</td>
       <td>${orador.apellido}</td>
       <td>${orador.tema}</td>
   </tr>
    
</c:forEach>