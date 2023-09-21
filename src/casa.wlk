import cosas.*
import cuentasBancarias.*

object casaDePepeYJulian {
	const cosas = []
	var property cuenta = cuentaCorriente
	
	method cosas(){
		return cosas
	}
	
	method comprar(cosa){
		cosas.add(cosa)
		self.gastar(cosa.precio())
	}
	
	method cantidadDeCosasCompradas(){
		return cosas.size()
	}
	
	method tieneComida(){
		return cosas.any({cosa => cosa.esComida()})
	}
	
	method ultimaCosaComprada(){
		return cosas.get(cosas.size() - 1)
	}
	
	method vieneDeEquiparse(){
		return self.ultimaCosaComprada().esElectrodomestico() or self.ultimaCosaComprada().precio() > 50000
	}
	
	method esDerrochona(){
		return cosas.sum({cosa => cosa.precio()}) > 90000
	}
	
	method compraMasCara(){
		return cosas.max({cosa => cosa.precio()})
	}
	
	method electrodomesticosComprados(){
		return cosas.filter({cosa => cosa.esElectrodomestico()})
	}
	
	method malaEpoca(){
		return cosas.all({cosa => cosa.esComida()})
	}
	
	method queFaltaComprar(lista){
		return lista.filter({cosa => lista.contains(cosa) and not cosas.contains(cosa)})
	}
	
	method faltaComida(){
		return cosas.count({cosa => cosa.esComida()}) <= 2
	}
	
	method gastar(importe){
		cuenta.extraer(importe)
	}
	
	method dineroDisponible(){
		return cuenta.saldo()
	}
}
