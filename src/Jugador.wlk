import Nave.*
import VotoEnBlanco.*

class Jugador {

	var property nivelSospecha = 40

	var estaImpugnado = false
	var estaExpulsado = false

	const mochila = []
	const tareas = #{}

	// -- Punto 1 -- //

	method esSospechoso() {
		return nivelSospecha > 50
	}

	// -- Punto 2 -- //

	method buscar(unItem) {
		mochila.add(unItem)
	}

	// -- Punto 3 -- //

	method completoTodasLasTareas()

	// -- Punto 4 -- //

	method realizarTarea()

	method disminuirNivelSospecha(unaCantidad) {
		nivelSospecha = 0.max(nivelSospecha - unaCantidad)
	}

	method aumentarNivelSospecha(unaCantidad) {
		nivelSospecha += unaCantidad
	}

	method tieneItems(unosItems) {
		return mochila.all { item => self.tieneItem(item) }
	}

	method tieneItem(unItem) {
		return mochila.contains(unItem)
	}

	method usarItems(unosItems) {
		return mochila.removeAll(unosItems)
	}

	// -- Punto 5 -- //

	method impugnate() {
		estaImpugnado = true
	}

	// -- Punto 6 -- //

	method llamarReunionDeEmergencia() {
		nave.reunionDeEmergencia()
	}

	method votarEntre(unosJugadores) {
		if (estaImpugnado) {
			estaImpugnado = false
			return votoEnBlanco
		} else {
			return self.realizarVotoEntre(unosJugadores)
		}
	}
	
	method realizarVotoEntre(unosJugadores)

	method expulsar() {
		estaExpulsado = true
		self.realizarExpulsion()
	}

	method realizarExpulsion()
	
	method tieneMochilaVacia() {
		return mochila.isEmpty()
	}

}