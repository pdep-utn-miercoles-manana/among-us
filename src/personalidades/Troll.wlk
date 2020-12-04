import VotoEnBlanco.*

object troll {

	// -- Punto 6 -- //

	method votarEntre(unosJugadores) {
		return unosJugadores.findOrDefault({ jugador => jugador.esSospechoso().negate() }, votoEnBlanco)
	}

}