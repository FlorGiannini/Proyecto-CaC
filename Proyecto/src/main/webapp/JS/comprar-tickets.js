
function calcularPrecio(){
  const cantidad = document.getElementById("cantidad").value;
  const categoria = document.getElementById("categoria").value;
  
  let precio = 200; 
   
    switch (categoria) {
      case 'Estudiante':
        precio *= 0.2;
        break;
      case 'Trainee':
        precio *= 0.5; 
        break;
      case 'Junior':
        precio *= 0.85; 
        break;
    }
    
   
    const TotalAPagar = document.getElementById("TotalAPagar");
    TotalAPagar.innerHTML =  (precio * cantidad);
    
  }
const resumen= document.getElementById("resumen")
resumen.onclick = calcularPrecio;
