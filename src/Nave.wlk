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
	
}