import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="datepicker"
export default class extends Controller {
  connect() {
    console.log("hola")
  }
}


/* Debo conectar el controlador en el html y siempre debe de ser con el nombre del archivo del controlador */

/* Escribo en el console log cualquier cosa, verifico en el navegador que si aparezca la palabra */
