class Barrio {

	const property elementos = []

	//Devuelve: Nada --- Param: Huerta || Mascota || Hogar
	method agregarElemento(elemento) {
		elementos.add(elemento)
	}

	//Devuelve: Nada --- Param: Huerta || Mascota || Hogar
	method sacarElemento(elemento) {
		elementos.remove(elemento)
	}

	//Devuelve: Un número entero
	method elementosBuenos() {
		return elementos.count{ e => e.esBueno() }
	}

	//Devuelve: Un número entero
	method elementosMalos() = elementos.count{ e => not e.esBueno() }

	//Devuelve: Un valor booleano
	method esCopado() {
		return self.elementosBuenos() > self.elementosMalos()
	}

}

