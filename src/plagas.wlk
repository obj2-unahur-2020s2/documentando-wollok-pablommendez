class Plaga {
	var property poblacion
	
	//Devuelve: Un valor booleano
	method transmiteEnfermedad() = poblacion >= 10
	
	//Devuelve: Nada --- Param: Huerta || Mascota || Hogar
	method atacar(elemento){
		poblacion *= 1.1
		elemento.fueAtacado(self)
	}
}

class PlagaCucaracha inherits Plaga {

	var property pesoPromedio

	//Devuelve: Un número real
	method nivelDanio() {
		return poblacion / 2
	}

	//Devuelve: Un valor booleano
	override method transmiteEnfermedad() {
		return super() and pesoPromedio >= 10
	}

	//Devuelve: Nada --- Param: Huerta || Mascota || Hogar
	override method atacar(elemento) {
		super(elemento)
		pesoPromedio += 2
	}

}

class PlagaMosquito inherits Plaga {

	//Devuelve: Un numero real
	method nivelDanio() {
		return poblacion
	}

	//Devuelve: Un valor booleano
	override method transmiteEnfermedad() {
		return super() and poblacion % 3 == 0
	}

}

class PlagaPulgas inherits Plaga {

	//Devuelve: Un numero real
	method nivelDanio() = poblacion * 2

}

class PlagaGarrapatas inherits PlagaPulgas {

	//Devuelve: Nada --- Param: Huerta || Mascota || Hogar
	override method atacar(elemento) {
		poblacion *= 1.2
		elemento.fueAtado(self)
	}

}

