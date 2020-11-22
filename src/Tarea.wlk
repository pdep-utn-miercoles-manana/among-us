import Nave.*

class Tarea {
	
	const itemsNecesarios = []
	
	// -- Punto 4 -- //
	
	method puedeRealizarla(unJugador) {
		return unJugador.tieneItems(itemsNecesarios)
	}
		
	method realizarsePor(unJugador) {
		self.realizatePor(unJugador)
		unJugador.usarItems(itemsNecesarios)
	}
	
	method realizatePor(unJugador)
	
}
