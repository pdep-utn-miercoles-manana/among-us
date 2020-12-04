object detective {

	// -- Punto 6 -- //

	method votarEntre(unosJugadores) {
		return unosJugadores.max { jugador => jugador.nivelSospecha() }
	}

}
