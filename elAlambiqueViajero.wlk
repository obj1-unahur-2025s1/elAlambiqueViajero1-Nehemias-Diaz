object luke {
  var cantidadDeViajes = 0
  var recuerdo = null

  method viajarLugar(unLugar) {
    if(unLugar.puedeLlegar()) {
        cantidadDeViajes = cantidadDeViajes + 1
        recuerdo = unLugar.recuerdoTipico()
        alambiqueVeloz.consumirCombustible()
    }
    
  }

  method recuerdo() = recuerdo

}

object alambiqueVeloz {
    const consumoPorViaje = 10
    var esRapido = true
    var combustible = 100

    method tieneCombustible() = combustible > 0

    method consumirCombustible() {
      combustible = combustible - 10
    }

    method cantidadDeCombustible() = combustible

}

object paris {
  method recuerdoTipico() = "llavero torre eifel"
  method puedeLlegar() = alambiqueVeloz.cantidadDeCombustible() > 10
}

object buenosAires {
  method recuerdoTipico() = "mate" 
}

object bagdad {
  var recuerdo = "bidon de petroleo"

  method recuerdoTipico() = recuerdo

  method cambiarRecuerdo(unRecuerdo) {
    recuerdo = unRecuerdo
  }
}

object lasVegas {
    var homenaje = paris
    method puedeLlegar() = 
}