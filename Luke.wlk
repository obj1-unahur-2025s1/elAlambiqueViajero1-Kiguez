import Autos.*

object luke {
    var cantidadDeViajes = 0
    var recuerdo = null
    var autoActual = alambiqueVeloz

    method recuerdo() = recuerdo

    method autoActual() = autoActual

    method cuantosViajes() = cantidadDeViajes

    method Viajar(lugar) {
        if (self.esPosibleViajarA_(lugar)) {
            cantidadDeViajes = cantidadDeViajes + 1
            recuerdo = lugar.recuerdoTipico()
            self.autoActual().ConsumirCombustible()
            self.autoActual().EjecutarAccionSegunCiudad(lugar)
        }
    }

    method CambiarAuto(autoNuevo) {
        autoActual = autoNuevo
    }

    method esPosibleViajarA_(lugar) {
        return
            lugar.puedeLlegar()
    }

    method tienePlata() {
        return
            cantidadDeViajes > 3
    }
}