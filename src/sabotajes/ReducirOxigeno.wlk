import Item.*
import Nave.*

object reducirOxigeno {

	// -- Punto 5 -- //

	method realizarse() {
		if (nave.alguienTiene(tuboOxigeno)) {
			nave.disminuirNivelOxigeno(10)
		}
	}

}