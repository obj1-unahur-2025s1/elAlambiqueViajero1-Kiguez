object alambiqueVeloz {
    var combustible = 100
    const consumoPorViaje = 10
    var esRapido = true

    method combustible() = combustible

    method tieneCombustible() {
        return 
            combustible >= 10
    }

    method ConsumirCombustible() {
        combustible = combustible - consumoPorViaje
    }

    method esRapido() = esRapido

    method CambiarVelocidad() {
        esRapido = not esRapido
    }

    method EjecutarAccionSegunCiudad(ciudad) {}
}

object superChatarraEspecial {
    var combustible = 100
    const consumoPorViaje = 10
    var esRapido = true
    var balas = 100

    method balas() = balas

    method combustible() = combustible

    method tieneCombustible() {
        return combustible >= 10
    }
    method ConsumirCombustible() {
        combustible = combustible - consumoPorViaje
    }

    method esRapido() = esRapido

    method CambiarVelocidad() {
        esRapido = not esRapido
    }

    method EjecutarAccionSegunCiudad(ciudad) { /*Este auto le dispara a los gangsters de las ciudades y gasta
                                                una bala por cada gangster que hay en la ciudad*/
        self.Disparar_Balas(ciudad.cantidadDeGangsters())
    }

    method Disparar_Balas(cantidadDeDisparos) {
        balas = balas - cantidadDeDisparos
        self.consumirPorDisparo(cantidadDeDisparos)
    }

    method consumirPorDisparo(cantidadDeDisparos) { /*Por cada bala disparada el auto pierde una unidad de
                                                      combustible, debido a que este ultimo hace funcionar 
                                                      a los cañones*/
         combustible = combustible - cantidadDeDisparos
    }

}

object antiguallaBlindada {
    var combustible = 100
    const consumoPorViaje = 10
    var cantidadDeGangsters = 0

    method combustible() = combustible

    method cantidadDeGangsters() = cantidadDeGangsters

    method tieneCombustible() {
        return combustible >= 10
    }
    method ConsumirCombustible() {
        combustible = combustible - consumoPorViaje
    }

    method esRapido() { /*Este auto solamente es rapido cuando tiene menos de 10 gangsters 
                          a bordo, si tiene mas se vuelve lento por el peso*/
        return cantidadDeGangsters < 10
    }

    method SubirCantidadDeGangsters(cantidad) {
        cantidadDeGangsters = cantidadDeGangsters + cantidad
    }

    method EjecutarAccionSegunCiudad(ciudad) { /*Este auto deja subir a todos los gangsters que se 
                                                 encuentra en las ciudades*/
        self.SubirCantidadDeGangsters(ciudad.cantidadDeGangsters())
    }

}

object superConvertible {
    var combustible = 100
    const consumoPorViaje = 10
    var esRapido = true
    var elTechoEstaPuesto = false

    method combustible() = combustible

    method elTechoEstaPuesto() = elTechoEstaPuesto

    method tieneCombustible() {
        return combustible >= 10
    }
    method ConsumirCombustible() {
        combustible = combustible - consumoPorViaje
    }

    method esRapido() = esRapido /*La velocidad de este auto depende de si tiene o no puesto el techo, cuando 
                                   este esta puesto, el auto se vuelve lento por una cuestion de aerodinamica*/

    method CambiarVelocidad() {
        esRapido = not elTechoEstaPuesto
    }

    method EjecutarAccionSegunCiudad(ciudad) { /*Cuando la ciudad visitada tiene mas de 10 gangsters, este auto
                                                 sube su techo para protegerse de estos*/
        self.SubirTechoSiEsNecesarioEn_(ciudad)
        self.CambiarVelocidad()
                                                        
        
    }
    method SubirTechoSiEsNecesarioEn_(ciudad) {
        if(ciudad.cantidadDeGangsters() > 10) {
            elTechoEstaPuesto = true
        }
        else elTechoEstaPuesto = false
    }
}