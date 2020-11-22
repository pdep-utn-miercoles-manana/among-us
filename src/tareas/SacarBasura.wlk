import Tarea.*
import Item.*

object sacarBasura inherits Tarea(itemsNecesarios = [bolsaConsorcio, escoba]) {
	
	// -- Punto 4 -- //
	
	override method realizatePor(unJugador) {
		unJugador.disminuirNivelSospecha(4)
	}
	
}
