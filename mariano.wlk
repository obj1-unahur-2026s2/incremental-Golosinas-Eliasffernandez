import golosinas.*

object mariano {
    const bolsaGolosinas = []
    const golosinasCompradas = []
    const golosinasDesechadas = []
    

    method comprar(unaGolosina){return bolsaGolosinas.add(unaGolosina)}

    method desechar(unaGolosina){return bolsaGolosinas.remove(unaGolosina)}
    method cantidadDeGolosinas(){return bolsaGolosinas.size()}
    method tieneLaGolosina(unaGolosina){return bolsaGolosinas.contains(unaGolosina)}
    method probarGolosinas(){ bolsaGolosinas.forEach({g => g.mordisco()})}
    method hayGolosinasSinTacc(){return bolsaGolosinas.any({g => g.libreDeGluten()})}
    method preciosCuidados(){return bolsaGolosinas.all({g => g.precio() <= 10})}
    method golosinaDeSabor(unSabor){return bolsaGolosinas.find({g => g.sabor() == unSabor})}
    method golosinasDeSabor(unSabor){return bolsaGolosinas.filter({g => g.sabor() == unSabor})}
    method sabores(){return bolsaGolosinas.map({g => g.sabor()}).asSet()} //convierte el resultado en un conjunto y elimina repetidos
    method golosinaMasCara(){return bolsaGolosinas.max({g => g.precio()})}
    method pesoGolosinas(){return bolsaGolosinas.sum({g => g.peso()})}

    method golosinasFaltantes(golosinasDeseadas) {return golosinasDeseadas.difference(bolsaGolosinas)} //return golosinasDeseadas.filter({g => !self.tieneLaGolosina(g)})

    method gustosFaltantes(gustosDeseados) {
        return gustosDeseados.filter({g => !self.tieneGolosinaDeSabor(g)})
    }
    method tieneGolosinaDeSabor(unSabor) {
        return bolsaGolosinas.any({g => g.sabor() == unSabor})
    }

    method gastoEn(unSabor) {return bolsaGolosinas.filter({g => g.sabor() == unSabor}).sum({g => g.precio()})}

    method saborMasPopular() {return self.sabores().max({g=> g.cantidadGolosinasDeSabor(g)})} 
    method cantidadGolosinasDeSabor(unSabor) {
            return bolsaGolosinas.filter({g => g.sabor() == unSabor}).size()
        }
    method saborMasPesado() {
            return self.sabores().max({s => self.pesoTotalDeSabor(s)})
        }
    method pesoTotalDeSabor(unSabor) {return bolsaGolosinas.filter({g => g.sabor() == unSabor}).sum({g => g.peso()})}

    method comproYDesecho(unaGolosina) {
        return golosinasCompradas.contains(unaGolosina) and
            golosinasDesechadas.contains(unaGolosina)
    }
    /*
    method baniar(unaGolosina){
        if(!self.tieneLaGolosina(unaGolosina) and !unaGolosina.estaBaniada(unaGolosina)){
            return unaGolosina.
        }
    }
    method estaBaniada(unaGolosina){
        return bolsaGolosinas.tieneLaGolosina(golosinaBaniada) == unaGolosina 
    }
    */
}
