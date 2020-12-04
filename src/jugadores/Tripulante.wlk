import Jugador.*
import Nave.*

class Tripulante inherits Jugador {

	var personalidad

	// -- Punto 3 -- //

	override method completoTodasLasTareas() {
		return tareas.isEmpty()
	}

	// -- Punto 4 -- //

	override method realizarTarea() {
		const tarea = self.tareaHacible()
		tarea.realizarsePor(self)
		self.tareaFinalizada(tarea)
	}

	method tareaHacible() {
		return tareas.find { tarea => tarea.puedeRealizarla(self) }
	}

	method tareaFinalizada(unaTarea) {
		tareas.remove(unaTarea)
		nave.tareaCompletada()
	}

	// -- Punto 6 -- //

	override method realizarExpulsion() {
		nave.perderTripulante()
	}

	override method realizarVotoEntre(unosJugadores) {
		return personalidad.votarEntre(unosJugadores)
	}

}