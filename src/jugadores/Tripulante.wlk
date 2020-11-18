import Jugador.*

class Tripulante inherits Jugador {

	// -- Punto 3 -- //
	
	override method completoTodasLasTareas() {
		return tareas.isEmpty()
	}
	
}
