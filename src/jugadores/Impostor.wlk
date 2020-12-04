import Jugador.*

class Impostor inherits Jugador {

	// -- Punto 3 -- //
	
	override method completoTodasLasTareas() {
		return true
	}
	
	// -- Punto 4 -- //
	
	override method realizarTarea() {
		// No hace nada
	}

	// -- Punto 5 -- //
	
	method realizarSabotaje(unSabotaje) {
		unSabotaje.realizarse()
		self.disminuirNivelSospecha(5)
	}
		
}
