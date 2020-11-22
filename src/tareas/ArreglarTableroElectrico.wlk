import Tarea.*
import Item.*

object arreglarTableroElectrico inherits Tarea(itemsNecesarios = [llaveInglesa]) {
	
	// -- Punto 4 -- //
	
	override method realizatePor(unJugador) {
		unJugador.aumentarNivelSospecha(10)
	}
	
}
