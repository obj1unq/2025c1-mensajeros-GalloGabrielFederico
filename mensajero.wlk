object paquete {
  var pago = 0
  method pago(_pago) {
    pago = _pago
  }
  method paquetePago(){
    return pago >= 0
  } 
  method entregar(mensajero, destino) {
    return self.paquetePago() && destino.dejarPasar(mensajero)
  }
}

object puenteDeBrooklyn {
  method dejarPasar(mensajero) {
    return mensajero.peso() <= 1000
  }
}

object laMatrix {
  method dejarPasar(mensajero) {
    return mensajero.llamar()
  }
}

object chuckNorris {
  method peso() {
    return 900
  }
  method llamar() {
    return true
  }
}

object neo {
  var credito = 0
  method credito(_credito) {
    credito = _credito
  }
  method peso() {
    return 0
  }
  method llamar() {
    return credito > 0
  }
}

object lincolnHawk {
  var vehiculo = bici
  method vehiculo(_vehiculo) {
    vehiculo = _vehiculo
  }
  method peso() {
    return 80 + vehiculo.peso()
  }
  method llamar() {
    return false
  }
}

object bici {
  method peso(){
    return 10
  }
}

object camion {
  var cantAcoplado = 0
  method cantAcoplado(_cantAcoplado) {
    cantAcoplado = _cantAcoplado
  }
  method peso() {
    return 500 + cantAcoplado * acoplado.peso()
  }
}

object acoplado {
  method peso() {
    return 500
  }
}







