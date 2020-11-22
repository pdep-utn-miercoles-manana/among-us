import Tarea.*
import Nave.*

object ventilarNave inherits Tarea(itemsNecesarios = []) {
	
	// -- Punto 4 -- //
	
	override method realizatePor(unJugador) {
		nave.aumentarNivelOxigeno(5)
	}
	
}
