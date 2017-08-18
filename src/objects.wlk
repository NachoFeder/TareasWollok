
object berghain {
	var pistas = #{mainRoom}
	var personas
	var patovas
}

object mainRoom{
	var personas = #{}
	
	method ingresarPersona(persona){
		personas.add(persona)
	}
	
	method pasarMusica(){
		personas.map(
			{persona => persona.disminuirEnergia(40)
						persona.aumentarDiversion(30)
			}
		)
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
	
	method disminuirEnergia(cantidad){
		energia -= cantidad
	}
	
	method aumentarDiversion(cantidad){
		diversion += cantidad
	}
}