object registroProduccion {
	var produccionPorDia = [43,18,49,62,33,39]	
	
	method cambiarProduccionPorDia(nuevaLista) {
		produccionPorDia = nuevaLista
	}
	method algunDiaSeProdujo2(cantidad){
		return produccionPorDia.contains(cantidad) 
		
		}
	//una forma
	method algunDiaSeProdujo(cantidad){
		return produccionPorDia.any({pd => pd == cantidad}) 
		
	}
	method maximoValorDeProduccion(){
		return produccionPorDia.max()
	}
	method valoresDeProduccionPares(){
		return produccionPorDia.filter({pd => pd.even()})
	}
	method produccionEsAcotada(n1,n2){
		//debe dar true si **tdos* cumplen una condicion: all
		return produccionPorDia.all({pd => pd.between(n1,n2)})
		
	}
	method produccionesSuperioresA(cuanto){
		return produccionPorDia.filter({pd => pd > cuanto})
		
	}
	method produccionesSumando(n){
		//quiero la lista que se obtiene
		//aplicando una operacion sobre cada elemento: map
		return produccionPorDia.map({pd => pd + n})
		
		
	}
	method totalProducido(){
		//la suma total:sum()
		return produccionPorDia.sum()
		
	}
	
	method ultimoValorDeProduccion(){
		//el ultimo elemento: last()
		//no interviene nunguna funcion
		return produccionPorDia.last()

	}
	method cantidadProduccionesMayorALaPrimera(){
		//cuantos elementos cumplen una condicion:count
		return produccionPorDia.count({pd => pd >produccionPorDia.first()})
		
	}
	
	
}
//garbage collection(recoleccion de basura)
//de lo que no se puede nombrar, no se puede pensar.
//STACK OVERFLOW 
