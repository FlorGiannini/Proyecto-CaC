<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Comprar Tickets</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="CSS/estilo.css">
<head>

 <body>
    <jsp:include page="WEB-INF/Comun/navbar.jsp"></jsp:include>

     
    <section id="cards" class="row row-col-3 g-2 mt-5 justify-content-center text-center">
        <div class="col-sm-8 col-md-4 col-lg-3">
          <div class="card border-primary">
             <div class="card-body ">
                 <h5 class="card-title">Estudiante</h5>
                 <p class="card-text">Tienen un descuento</p>
                 <p class="card-subtitle h4">80%</p> <br>
                 <small class="text-body-secondary">*Presentar documentacion</small>
             </div>
           </div>
        </div>

        <div class="col-sm-8 col-md-4 col-lg-3 ">
          <div class="card border-info">
            <div class="card-body">
                 <h5 class="card-title">Trainee</h5>
                 <p class="card-text">Tienen un descuento</p>
                 <p class="card-subtitle h4">50%</p> <br>
                 <small class="text-body-secondary">*Presentar documentacion</small>
               </div>
            </div>
        </div>

        <div class="col-sm-8 col-md-4 col-lg-3">
          <div class="card border-warning">
             <div class="card-body">
                 <h5 class="card-title">Junior</h5>
                  <p class="card-text">Tienen un descuento</p>
                  <p class="card-subtitle h4">15%</p> <br>
                  <small class="text-body-secondary">*Presentar documentacion</small>
                </div>
            </div>
        </div>

    </section>

    <section>
        <h2 class="text-center"><span id="small">VENTA</span><br> VALOR DE TICKET $200</h2>
        
        <div class="col-12 col-md-5 mx-auto">
         <form class="container-fluid">
             <div class="row g-2">
                 <div class="col-12 col-md-6 mb-2">
                    <input type="text" class="form-control" id="Nombre" placeholder="Nombre">
                 </div>
                
                 <div class="col-12 col-md-6 mb-2">
                    <input type="text" class="form-control col-12 col-md-6 mb-2" id="Apellido" placeholder="Apellido" >
                 </div>
                
                 <div class="col-12 mb-2">
                    <input type="email" class="form-control" id="Email" placeholder="Correo">
                 </div>
              </div>

                <div class="row g-2">
                   <div class="col-12 col-md-6 mb-2">
                     <label class="form-label">Cantidad</label>
                     <input id="cantidad" type="number" class="form-control" id="cantidad" placeholder="cantidad">
                   </div>
                    
                    <div class="col-12 col-md-6 mb-2">
                     <label class="form-label col-12 col-md-6 mb-2">Categoria</label>
                        <select id="categoria" class="form-select" aria-label="Default select example">
                            <option value="Estudiante" selected>Estudiante</option>
                            <option value="Trainee">Trainee</option>
                            <option value="Junior">Junior</option>
                        </select>
                    </div>
                </div>

                <div id="fondo-total" col-12 mb-2>
                  <span>Total a pagar: $</span>
                  <span id="TotalAPagar"></span>
                 </div>

                <div class="row g-2 mt-2 text-center">
                    <div class="col-12 col-md-6 mb-2">
                     <button id="borrar" type="reset" class="form-control text-white w-100 p-2">Borrar</button>
                    </div>
                
                    <div class="col-12 col-md-6 mb-2">
                     <button id="resumen" type="button" class="form-control text-white w-100 p-2">Resumen</button>
                    </div>
                </div>
          </form>
        </div>
    </section>


   <!--Pie de Pagina -->
   <jsp:include page="WEB-INF/Comun/footer.jsp"></jsp:include>

 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
 <script src="JS/comprar-tickets.js"></script>
 </body>
</html>