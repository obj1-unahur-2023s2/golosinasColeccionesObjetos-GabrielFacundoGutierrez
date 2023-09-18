import sabores.*

object bombon {
var property peso = 15	
	
	method precio() = 5
	method sabor() = frutilla
	method libreDeGluten() = true
	method recibirMordisco()  {peso =  0.max(peso * 0.8) - 1 }
}

object alfajor {
	var property peso = 300
	
	method precio() = 12
	method sabor() = chocolate
	method recibirMordisco() {peso = 0.max(peso * 0.8)}
	method libreDeGluten() = true
}

object caramelo {
	var property peso = 7
	
	method precio() = 1
	method sabor() = frutilla
	method recibirMordisco() {peso = peso - 1}
	method libreDeGluten() = true
}

object chupetin  {
	var property = 7
	
	method precio() = 2
	method sabor() = naranja
	method libreDeGluten() = true
	method recibirMordisco() = if (peso > 2){peso -= (peso*0.1)}
}

object oblea  {
	var property peso = 250
	
	method precio() = 5
	method sabor() = vainilla
	method libreDeGluten() = false
	method recibirMordisco() = if (peso> 70) {peso = peso/2} else {peso = peso/4}
}


object chocolatin {
	var property peso = 0
	
	
	method precio() = peso*0.5
	method libreDeGluten() = false
	method recibirMordisco()  {peso -= 2}
}

object golosinaBaniada {
	var golosinaBase
	var peso = golosinaBase.peso() + 4
	var nroMordiscos = 0
	
	method precio() = golosinaBase.precio() + 2
	method sabor() = golosinaBase.sabor()
	method libreDeGluten() = golosinaBase.libreDeGluten()
	method recibirMordisco() { 
      golosinaBase.recibirMordsico() 
	  if (nroMordisco <=1) {peso = golosinaBase.peso() + 2} else {peso = golosinaBase.peso()} 
	  nroMordiscos ++
	}
	
}

object pastillaTutifruti {
	var property peso = 5
	var property libreDerGluten = false
	var sabor = frutilla
	var nroMordiscos = 0
	const gustos = [frutilla,chocolate,naranja,vainilla]
	const mordisco = {sabor = gustos.get(nMordiscos%3)}
	
	method sabor() = sabor
	method precio() = if (libreDeGluten == true) {7} else {10}
	method mordisco() = mordisco
	method recibirMordisco() { mordisco.apply()
		                       nroMordiscos ++ }
	} 
}