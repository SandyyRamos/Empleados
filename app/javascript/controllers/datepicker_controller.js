import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="datepicker"
export default class extends Controller {
  connect() {
    console.log(this.element);
    flatpickr(this.element);
  }
}
/* Las clases pueden crear instancias y las instancias tienen metodos o atributos el .save es un método de instancia y el .new un método de this hace referencia tanto a variables de instancia como de métodos */

/* Debo conectar el controlador en el html y siempre debe de ser con el nombre del archivo del controlador */

/* Escribo en el console log cualquier cosa, verifico en el navegador que si aparezca la palabra */

/* La variable que guarda todo el contenido del controller se llama this element */
