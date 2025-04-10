import Autos.*
import Luke.*


object paris {

    method cantidadDeGangsters() = 8
    method recuerdoTipico() {
        return "LlaveroDeTorreEifel"
    }
    method puedeLlegar() {
        return luke.autoActual().tieneCombustible()
    }

   
}

object lasVegas {
    method cantidadDeGangsters() = 10
    var ciudadHomenajeada = 0

    method recuerdoTipico() = ciudadHomenajeada.recuerdoTipico()
    method homenajeA(ciudad) {
        ciudadHomenajeada = ciudad
    }
    method puedeLlegar() {
        return ciudadHomenajeada.puedeLlegar()
    }
 }

object buenosAires {
    method cantidadDeGangsters() = 15
    var presidenteEsBueno = true

    method cambioDePresidente() {
        presidenteEsBueno = not presidenteEsBueno
    }

    method recuerdoTipico() {
        return
         if (presidenteEsBueno) {
            "mate con yerba"
        }
        else "mate sin yerba"
    }
}

object bagdad {
    method cantidadDeGangsters() = 20
    var recuerdoTipico = "armas"

    method CambiarRecuerdo(recuerdoNuevo) {
        recuerdoTipico = recuerdoNuevo
    }
    method recuerdoTipico() = recuerdoTipico

    method puedeLlegar() = true
}