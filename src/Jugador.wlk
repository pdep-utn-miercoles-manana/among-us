class Jugador {
	
	var nivelSospecha = 40
	var estaImpugnado = false
	
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
	
}