import Jugador.*
import Nave.*

class Tripulante inherits Jugador {

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
	
}
