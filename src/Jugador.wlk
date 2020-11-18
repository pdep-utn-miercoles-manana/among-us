class Jugador {
	
	var nivelSospecha = 40
	
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
	
}