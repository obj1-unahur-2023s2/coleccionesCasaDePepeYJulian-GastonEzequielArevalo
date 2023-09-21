import dolar.*
import cuentasBancarias.*

object heladera {
	method precio() { return 200000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 80000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 3500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 12000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object kiloDeMilanesaRebozada {
	method precio() { return 2600 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object salsaDeTomates {
	method precio() { return 800 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object microondas {
	method precio() { return 42000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object kiloDeCebolla {
	method precio() { return 250 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object compu {
	method precio() { return 500 * dolar.precioVenta() }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object packComida{
	const pack = [] 
	
	method precio() { return pack.sum({cosa => cosa.precio()})}
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

//Respuesta a la pregunta : No hace falta cambiar nada ya que todos los objetos de "cosas" son poliformicos
// y en "casa" tenemos el método comprar



