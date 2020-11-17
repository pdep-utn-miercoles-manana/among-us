class Jugador {
	
	var nivelSospecha = 40
	
	const mochila = []

	// -- Punto 1 -- //
	
	method esSospechoso() {
		return nivelSospecha > 50
	}
	
	// -- Punto 2 -- //
	
	method buscar(unItem) {
		mochila.add(unItem)
	}
	
}