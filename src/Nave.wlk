object nave {
	
	var nivelOxigeno
	var cantidadImpostoresEnNave = 2
	var cantidadTripulantesEnNave = 8
	
	const jugadores = #{}
	
	// -- Punto 4 -- //
	
	method tareaCompletada() {
		if (self.completaronTodasLasTareas()) {
			self.throwTripulantesGanan()
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
			self.throwImpostoresGanan()
		}
	}

	// -- Punto 6 -- //
	
	method reunionDeEmergencia() {
		self.jugadorMasVotado().expulsar()
		self.verificarJuegoTerminado()
	}
	
	method jugadorMasVotado() {
		const votados = self.jugadoresEnNave().map { jugador => jugador.votarEntre(self.jugadoresEnNave()) }
		return votados.max { jugador => votados.occurrencesOf(jugador) }
	}
	
	method jugadoresEnNave() {
		return jugadores.filter { jugador => jugador.estaExpulsado().negate() }
	}
	
	method perderTripulante() {
		cantidadTripulantesEnNave--
	}

	method perderImpostor() {
		cantidadImpostoresEnNave--
	}
	
	method verificarJuegoTerminado() {
		if (cantidadImpostoresEnNave == cantidadTripulantesEnNave) {
			self.throwImpostoresGanan()
		}
		if (cantidadImpostoresEnNave == 0) {
			self.throwTripulantesGanan()
		}
	}
	
	method throwImpostoresGanan() {
		throw new Exception(message = "Impostores ganan")
	}

	method throwTripulantesGanan() {
		throw new Exception(message = "Tripulantes ganan")
	}

}