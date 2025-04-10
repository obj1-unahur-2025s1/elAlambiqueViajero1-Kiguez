object alambiqueVeloz {
    var combustible = 100
    const consumoPorViaje = 10
    var esRapido = true

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

    method EjecutarAccionSegunCiudad(ciudad) {}
}

object superChatarraEspecial {
    var combustible = 100
    const consumoPorViaje = 10
    var esRapido = true
    var balas = 50

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

    method EjecutarAccionSegunCiudad(ciudad) {
        self.Disparar_Balas(ciudad.gangsters())
    }

    method Disparar_Balas(cantidadDeDisparos) {
        balas = balas - cantidadDeDisparos
        self.consumirPorDisparo(cantidadDeDisparos)
    }

    method consumirPorDisparo(cantidadDeDisparos) {
         combustible = combustible - cantidadDeDisparos
    }

}

object antiguallaBlindada {
    var combustible = 100
    const consumoPorViaje = 10
    var cantidadDeGangsters = 0

    method cantidadDeGangsters() = cantidadDeGangsters

    method tieneCombustible() {
        return combustible >= 10
    }
    method ConsumirCombustible() {
        combustible = combustible - consumoPorViaje
    }

    method esRapido() {
        return cantidadDeGangsters < 10
    }

    method SubirCantidadDeGangsters(cantidad) {
        cantidadDeGangsters = cantidadDeGangsters + cantidad
    }

    method EjecutarAccionSegunCiudad(ciudad) {
        self.SubirCantidadDeGangsters(ciudad.cantidadDeGangsters())
    }

}

object superConvertible {
    var combustible = 100
    const consumoPorViaje = 10
    var esRapido = true
    var elTechoEstaPuesto = false

    method elTechoEstaPuesto() = elTechoEstaPuesto

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

    method EjecutarAccionSegunCiudad(ciudad) {
        if(ciudad.cantidadDeGangsters() > 10) {
            elTechoEstaPuesto = true
        }
        else elTechoEstaPuesto = false
    }
}