import Autos.*

object luke {
    var cantidadDeViajes = 0
    var recuerdo = null
    var autoActual = alambiqueVeloz

    method recuerdo() = recuerdo

    method autoActual() = autoActual

    method cuantosViajes() = cantidadDeViajes

    method Viajar(lugar) {
        if (lugar.puedeLlegar()) {
            cantidadDeViajes = cantidadDeViajes + 1
            recuerdo = lugar.recuerdoTipico()
            self.autoActual().ConsumirCombustible()
            self.autoActual().EjecutarAccionSegunCiudad(lugar)
        }
    }

    method CambiarAuto(autoNuevo) {
        autoActual = autoNuevo
    }
}