
object berghain {
	var pistas = #{mainRoom}
	var personas
	var patovaDeTurno
	
	method patovaDeturno(patova){
		patovaDeTurno = patova
	}
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
	
	var edad = 17
	var energia = 150
	var diversion = 70
	var remera = "blanca"
	
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

object gonzen {
	
	var edad = 33
	var energia = 90
	var diversion = 15
	var remera = "blanca"
	
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

object bianker {
	
	var edad = 22
	var energia = 140
	var diversion = 80
	var remera = "negra"
	
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

