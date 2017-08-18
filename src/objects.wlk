
object berghain {
	var pistas
	var personas
	var patovas
}

object mainRoom{
	var personas = #{}
	
	method ingresarPersona(persona){
		personas.add(persona)
	}
	
	method personas(){
		return personas
	}
}

object lucaz {
	
	var energia = 150
	var diversion = 70
	
	method ingresarAPista(pista){
		pista.ingresarPersona(self)
	}
}