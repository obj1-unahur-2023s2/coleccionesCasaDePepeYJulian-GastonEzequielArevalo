import cosas.*
import casa.*

object cuentaCorriente {
	var property saldo = 0
	
	method depositar(importe){
		saldo = saldo + importe
	}
	
	method extraer(importe){
		saldo = 0.max(saldo - importe)
	}
	
}

object cuentaConGasto{
	var property saldo = 0
	
	method depositar(importe){
		saldo = (saldo + importe) - 200
	}
	
	method extraer(importe){
		if (importe <= 10000){
			saldo = 0.max((saldo - importe) - 200)
		}
		else{
			saldo = (saldo + importe) - importe * 0.2
		}
	}
}

object cuentaCombinada{
	const cuentas = []
	
	method saldo(){
		return cuentas.sum({x => x.saldo()})
	}
	
	method defCuenta(cuentaPrimaria,cuentaSecundaria){
		cuentas.addAll([cuentaPrimaria,cuentaSecundaria])
	}
	
	method depositar(importe){
		cuentas.get(0).depositar(importe)
	}
	
	method extraer(importe){
		if (cuentas.get(0).saldo() > importe){
			cuentas.get(0).extraer(importe)
		}
		else{
			cuentas.get(1).extraer(importe)
		}
	}
}