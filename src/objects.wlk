
object berghain {
	var pistas = #{mainRoom, panoramaBar} //que hago con dark room?
	var personas = #{} // deberia estar o no?
	var patovaDeTurno
	
	method patovaDeTurno(patova){
		patovaDeTurno = patova
	}
	
	method ingresarPersona(persona, pista){
		if(patovaDeTurno.dejaPasar(persona)){
			pista.ingresarPersona(persona)
			personas.add(persona)
		}
	}
	
	method personas(){
		return personas
	}
	
	method estaEnElClub(persona){
		return personas.contains(persona)
	}
	
	method cantidadDePersonasPorPista(){} //es un metodo del club o cada pista lo deberia indicar con un cantidad de personas?
}

object mainRoom{
	var personas = #{}
	
	method ingresarPersona(persona){
		personas.add(persona)
	}
	
	method pasarMusica(){ // repeticion de logica?
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
	var personas = #{}
	
	method ingresarPersona(persona){
		personas.add(persona)
	}
	
	method dj(unDJ){
		dj = unDJ
	}
	
	method personas(){
		return personas
	}
	
	method pasarMusica(){
		dj.tocarMusica(personas)
	}
	
}

//pueden ser metodos?
object dixon {
	
	method tocarMusica(grupoDePersonas){
		grupoDePersonas.map(
			{persona => persona.modificarEnergia(-40)
						persona.modificarDiversion(30)
			}		
		)
	}
}

object marcelDettmann{
	
	method tocarMusica(grupoDePersonas){
		grupoDePersonas.map(
			{persona => persona.dejarSinEnergia()
						persona.modificarDiversion(1000)
			}		
		)
	}
}

object tommyMunioz{
	
	method tocarMusica(grupoDePersonas){
		grupoDePersonas.map(
			{persona => persona.modificarEnergia(-80)
			}		
		)
	}	
}

//pueden ser metodos?
object rochensen{
	
	method dejaPasar(persona){
		return persona.edad() > 21
	}
}

object rodrigsen{
	
	method dejaPasar(persona){
		return persona.remera() == "negra"
	}
}

object gushtavotruccensen{
	
	method dejaPasar(persona){
		return false
	}
}

object vonLucaz {
	
	var edad = 17
	var energia = 150
	var diversion = 70
	var remera = "blanca"
	
	method ingresarAlClub(club,pista){
		club.ingresarPersona(self, pista)
	}
	
	method modificarEnergia(cantidad){
		energia += cantidad
	}
	
	method modificarDiversion(cantidad){
		diversion += cantidad
	}
	
	method dejarSinEnergia(){
		energia = 0
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
	
	method ingresarAlClub(club,pista){
		club.ingresarPersona(self, pista)
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

	method dejarSinEnergia(){
		energia = 0
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
	
	method ingresarAlClub(club,pista){
		club.ingresarPersona(self, pista)
	}
	
	method modificarEnergia(cantidad){
		energia += cantidad
	}
	
	method modificarDiversion(cantidad){
		diversion += cantidad
	}
	
	method dejarSinEnergia(){
		energia = 0
	}
	
	method edad(){
		return edad
	}
	
	method remera(){
		return remera
	}
}

