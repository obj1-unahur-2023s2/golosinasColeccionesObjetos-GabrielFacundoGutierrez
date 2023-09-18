import golosinas.*
import sabores.*

object mariano {
	
	const bolsaDeGolosinas = []     
	
	method comprarGolosina(unaGolosina) {
		bolsaDeGolosinas.add(unaGolosina)
	} 
	
	
	method desecharGolosina(unaGolosina) {
		bolsaDeGolosinas.remove(unaGolosina)
	}
	
	method cantidadDeGolosinas() {
		bolsaDeGolosinas.size()
	}
	
	method tieneLaGolosina(unaGolosina) {
		bolsaDeGolosinas.contains(unaGolosina)
	}
	
	method probarGolosinas() {
		bolsaDeGolosinas.forEach({golosina => golosina.recibirMordisco()})
	}
	
	method hayGolosinaSinTACC() {
		bolsaDeGolosinas.any({golosina => golosina.libreDeGluten()})
	}
	
	method preciosCuidados() {
		bolsaDeGolosinas.all({golosina => golosina.precio() <= 10})
	}
	
	method golosinaDeSabor(unSabor) {
		bolsaDeGolosinas.first({golosina => golosina.sabor() == unSabor})
	}
	
	method golosinasDeSabor(unSabor) {
		bolsaDeGolosinas.filter({golosina => golosina.sabor() == unSabor})
	}
	
	method sabores() {
		bolsaDeGolosinas.all({golosina => golosina.sabor()}).asSet()
	}
	
	method golosinaMasCara() {
		bolsaDeGolosinas.max({golosina => golosina.precio()})
	}
	
	method pesoGolosinas() {
		bolsaDeGolosinas.sum({golosina => golosina.peso()})
	}
}
