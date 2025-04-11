import Autos.*
import Luke.*


object paris {

    method cantidadDeGangsters() = 8
    method recuerdoTipico() {
        return "Llavero De Torre Eifel"
    }
    method puedeLlegar() {
        return luke.autoActual().tieneCombustible()
    }
}

object lasVegas {
    method cantidadDeGangsters() = 10
    var ciudadHomenajeada = emiratos_Arabes

    method recuerdoTipico() = ciudadHomenajeada.recuerdoTipico() 
    
    method homenajeA(ciudad) {
        ciudadHomenajeada = ciudad
    }
    method puedeLlegar() {
        return ciudadHomenajeada.puedeLlegar()
    }
 }

object buenosAires {
    var presidenteEsBueno = true

    method cantidadDeGangsters() = 15
    
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

    method puedeLlegar() {
        return
            luke.autoActual().esRapido()
    }
}

object bagdad {
    method cantidadDeGangsters() = 20
    var recuerdoTipico = "Armas De Destruccion Masiva"

    method CambiarRecuerdo(recuerdoNuevo) {
        recuerdoTipico = recuerdoNuevo
    }
    method recuerdoTipico() = recuerdoTipico

    method puedeLlegar() = true
}

object emiratos_Arabes {
    var recuerdoTipico = "Llavero del Burj Khalifa"

    method cantidadDeGangsters() = 3
    method tipoDeRecuerdo() { /*El recuerdo de esta ciudad es caro, asique si luke tiene suficiente plata 
                                puede llevarselo, en caso contrario puede llevarse la version economica*/
        if(luke.tienePlata()) {
            recuerdoTipico = "llavero del Burj Khalifa hecho de oro"
        }
        else recuerdoTipico = "llavero del Burj Khalifa hecho de plastico"
    }
    method recuerdoTipico() {
        self.tipoDeRecuerdo()
        return
            recuerdoTipico
    }

    method puedeLlegar() { /*En esta ciudad les gusta mucho el petroleo, asique solo dejan entrar a luke si
                             tiene mucho combustible*/
        return
            luke.autoActual().combustible() >= 60
    }
}