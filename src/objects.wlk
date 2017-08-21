
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
			{persona => persona.modificarEnergia(-40)
						persona.modificarDiversion(30)
			}
		)
	}
	
	method personas(){
		return personas
	}
}

object panoramaBar {
	
	var dj
	var personas
	
	method pasarMusica(){
		dj.tocarMusica(personas)
	}
	
}

object dixon {
	
	method tocarMusica(grupoDePersonas){
		grupoDePersonas.map(
			{persona => persona.modificarEnergia(-40)
						persona.modificarDiversion(30)
			}		
		)
	}
}

object vonLucaz {
	
	var edad = 17
	var energia = 150
	var diversion = 70
	var remera = "blanca"
	
	method ingresarAPista(pista){
		pista.ingresarPersona(self)
	}
	
	method modificarEnergia(cantidad){
		energia += cantidad
	}
	
	method modificarDiversion(cantidad){
		diversion += cantidad
	}
	
	method edad(){
		return edad
	}
	
	method remera(){
		return remera
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
	
	method modificarEnergia(cantidad){
		energia += cantidad
	}
	
	method modificarDiversion(cantidad){
		diversion += cantidad
	}
		method edad(){
		return edad
	}
	
	method remera(){
		return remera
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
	
	method modificarEnergia(cantidad){
		energia += cantidad
	}
	
	method modificarDiversion(cantidad){
		diversion += cantidad
	}
		method edad(){
		return edad
	}
	
	method remera(){
		return remera
	}
}

