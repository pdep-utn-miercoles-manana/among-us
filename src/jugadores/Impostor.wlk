import Jugador.*
import Nave.*

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

	// -- Punto 6 -- //

	override method realizarExpulsion() {
		nave.perderImpostor()
	}

	override method realizarVotoEntre(unosJugadores) {
		return unosJugadores.anyOne()
	}

}