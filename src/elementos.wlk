class Hogar {

	var property nivelMugre
	var property confort

	// Se considera que un hogar _es bueno_ 
	// si su nivel de mugre es la mitad del confort que ofrece, o menos. 

	//Devuelve: Un valor booleano
	method esBueno() = nivelMugre <= confort / 2

	//Devuelve: Nada --- Param: Plaga y cualquiera de sus subclases
	method fueAtacado(plaga) {
		nivelMugre += plaga.nivelDanio()
	}

}

class Mascota {

	var property nivelSalud

	//Devuelve: Nada --- Param: Plaga y cualquiera de sus subclases
	method fueAtacado(plaga) {
		if (plaga.transmiteEnfermedad()) {
			nivelSalud -= plaga.nivelDanio()
		}
	}
	//Devuelve: Un valor booleano
	method esBueno() = nivelSalud > 250

}

class Huerta {

	var property capacidadProduccion
	
	//Devuelve: Un valor booleano
	method esBueno() {
		return capacidadProduccion > INTA.produccionMinima()
	}

	//Devuelve: Nada --- Param: Plaga y cualquiera de sus subclases
	method fueAtacado(plaga) {
		capacidadProduccion -= plaga.nivelDanio() * 0.1
		if (plaga.transmiteEnfermedad()) {
			capacidadProduccion -= 10
		}
	}

}

object INTA {

	var property produccionMinima

}

