import VotoEnBlanco.*

object materialista {

	// -- Punto 6 -- //

	method votarEntre(unosJugadores) {
		return unosJugadores.findOrDefault({ jugador => jugador.tieneMochilaVacia() }, votoEnBlanco)
	}

}