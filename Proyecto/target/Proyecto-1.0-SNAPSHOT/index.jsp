<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trabajo integrador Codo a Codo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="CSS/estilo.css">
</head>

<body>
    <jsp:include page="WEB-INF/Comun/navbar.jsp"></jsp:include>
<!--Aysa y texto-->
<section class="Aysa">
  <div class="texto-foto container d-flex"><h1 class="titulo">Conf Bs As</h1><p class="parrafo">Bs As llega por primera vez a Argentina. Un evento para compartir con nuestra comunidad el conocimiento y experiencia de los expertos que estan creando el futuro de Internet. Ven a conocer a miembros del evento, a otros estudiantes de Codo a Codo y los oradores de primer nivel que tenemos para ti. Te esperamos!      <div class="enlaces">     <a class="boton1 border border-white" type="button" href="#">Quiero ser orador</a>
       <a class="boton2" href="comprar-tickets.jsp">Comprar tickets</a></p>
      </div>
   </div>
</section>

<!--Conoce a los oradores--> 
<section>
  <h2 class="text-center"><span id="small">CONOCE A LOS</span><br> ORADORES</h2>
 
 <div class="container-fluid row row-col-3 justify-content-center">   
    <!--Steve Jobs--> 
    <div class="col-sm-4 col-lg-3 mx-lg-3 px-0 border-top-sm-0 border border-sm-secondary">
        <img src="IMG/steve.jpg" alt="Steve-Jobs" width="100%" height="50%" class="img-fluid">
   
      <p></p>
      <span class="ms-3" id="js">JavaScript</span> <span id="react">React</span><h3 id="nombres" class="text-start ps-3 ">Steve Jobs</h3>

      <p id="info">Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore temporibus nihil iusto assumenda dicta. Delectus non vero error. </p>
    </div> 
  
    <!--Bill Gates--> 
    <div class="col-sm-4 col-lg-3 mx-lg-3 px-0 border-top-sm-0 border border-sm-secondary">
        <img src="IMG/bill.jpg" alt="Bill-Gates" width="100%" height="50%" class="img-fluid">

      <p></p> 
      <span class="ms-3" id="js">JavaScript</span> <span id="react">React</span> <h3 id="nombres" class="text-start ps-3 pt-0">Bill Gates</h3>
   
      <p id="info">Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit, praesentium? Asperiores alias, nisi praesentium suscipit libero ullam sed velit?</p>
    </div>
    
    <!--Ada Lovelace-->  
    <div class="col-sm-4 col-lg-3 mx-lg-3 px-0 border-top-sm-0 border border-sm-secondary">
        <img src="IMG/ada.jpeg" alt="Ada-Lovelace" width="100%" height="50%" class="img-fluid">

      <p></p>
      <span class="ms-3" id="negocios">Negocios</span> <span id="startups">Sturtups</span> <h3 id="nombres" class="text-start ps-3">Ada Lovelace</h3>

      <p id="info">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Dignissimos quam explicabo perspiciatis, atque consequuntur distinctio quae ipsam.</p>
    </div>
 </div>
</section> 

<!--Playa y Bs As-->   
<section class="row row-cols-sm-2 px-0 mx-0 mt-3">
    <img class="col m-0 p-0 img-fluid" src="IMG/honolulu.jpg" alt="Playa de Honolulu">

  <div id="fondo" class="col m-0 p-0 text-white"> 
  <h2 class="ms-3 mt-4">Bs As - Octubre</h2> 
  <p class="texto-bsas ms-3"> Buenos Aires es la provincia y localidad mas grande del estado de Argentina, en los Estados Unidos. Honolulu es la mas sureña de entre las principales ciudades estadounidenses. Aunque el nombre de Honolulu se refiere al área urbana en la costa sureste de la isla de Oahu, la ciudad y el condado de Honolulu han formado una ciudad-condado consolidada que cubre toda la ciudad (aproximadamente 600 km² de superficie).
  </p>
  <button class="boton-bsas" type="submit">Conocé más</button>
  </div>
</section>

<!--Formulario-->
<section>
  <h2 class="text-center"> <span id="small"> CONVIERTETE EN UN</span><br> ORADOR </h2>
  <p class="subtitulo"> Anótate como orador para dar una <span id="subrayado">charla ignite</span>. Cuéntanos de qué quieres hablar!</p>
 
  <div class="col-12 col-md-6 mx-auto">
      <form class="container-fluid" method="post" action="${pageContext.request.contextPath}/oradores" >
       <div class="row">
           <div class="col-12 col-md-6 mb-2">
               <input type="text" class="form-control" name="nombre" id="Nombre" placeholder="Nombre">
           </div>
           
           <div class="col-12 col-md-6 mb-2">
               <input type="text" class="form-control col-12 col-md-6 mb-2" name="apellido" id="Apellido" placeholder="Apellido" >
            </div>
         </div>
 
       <div class="row">
           <div class="col-12 mb-2">
             <textarea class="form-control mb-2" id="tema" cols="30" rows="6" name="tema" placeholder="¿Sobre qué quieres hablar?"></textarea>
           </div>
         </div>
       
       <div class="row text-start">
           <label class="fs-6 mb-3 text-secondary-emphasis">Recuerda incluir un tí­tulo para tu charla</label>
       </div>
 
       <div class="row text-center">
           <div class="col-12">
               <button id="enviar" type="submit" class="text-white p-2 w-100">Enviar</button>
             </div>
         </div>
     </form>
   </div>
 </section>
   
<!--Pie de pagina-->
<jsp:include page="WEB-INF/Comun/footer.jsp"></jsp:include>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
