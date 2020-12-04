object nave {
	
	var nivelOxigeno
	
	const jugadores = #{}
	
	// -- Punto 4 -- //
	
	method tareaCompletada() {
		if (self.completaronTodasLasTareas()) {
			throw new Exception(message = "Tripulantes ganan")
		}
	}
		
	method completaronTodasLasTareas() {
		return jugadores.all { jugador => jugador.completoTodasLasTareas() }
	}
	
	method aumentarNivelOxigeno(unaCantidad) {
		nivelOxigeno += unaCantidad
	}
	
	// -- Punto 5 -- //
	
	method alguienTiene(unItem) {
		return jugadores.any { jugador => jugador.tieneItem(unItem) }
	}
	
	method disminuirNivelOxigeno(unaCantidad) {
		nivelOxigeno -= unaCantidad
		if (nivelOxigeno <= 0) {
			throw new Exception(message = "Impostores ganan")
		}
	}
	
}