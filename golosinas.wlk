object frutilla{}
object chocolate{}
object naranja{}
object vainilla{}


object bombon{
    var pesoInicial = 15

    method peso(){ return pesoInicial}
    method precio(){
        return 5
    }
    method sabor(){
        return frutilla
    }
    method libreDeGluten(){
        return true 
    }
    method mordisco(){
        pesoInicial = 0.max(self.peso() * 0.8) - 1

    }
}
object alfajor{
    var pesoInicial = 300

    method precio(){
        return 12
    }
    method peso(){return pesoInicial}
    method sabor(){
        return chocolate
    }
    method libreDeGluten(){
        return false 
    }
    method mordisco(){
        pesoInicial = pesoInicial * 0.8 
    }
}
object caramelo{
    var pesoInicial = 5

    method precio(){
        return 1
    }
    method peso(){return pesoInicial}
    method sabor(){
        return frutilla
    }
    method libreDeGluten(){
        return true 
    }
    method mordisco(){
        pesoInicial = pesoInicial - 1
    }
}

object chupetin{
    var pesoInicial = 7

    method precio(){
        return 2
    }
    method peso(){return pesoInicial}
    method sabor(){
        return naranja
    }
    method libreDeGluten(){
        return true 
    }
    method mordisco(){
        if(pesoInicial > 2){
            pesoInicial = pesoInicial * 0.9
        }
    }
}

object oblea {
    var pesoInicial = 250

    method precio(){
        return 5
    }
    method peso(){return pesoInicial}
    method sabor(){
        return vainilla
    }
    method libreDeGluten(){
        return false 
    }
    method mordisco(){
        if(pesoInicial > 70){
            pesoInicial = pesoInicial * 0.5
        }
        else{
            pesoInicial = pesoInicial * 0.25
        }
    }
}

object chocolatin{
    var pesoInicial = 0
    var comido = 0
    method precio() {return pesoInicial * 0.50}
    method pesoInicial(unPeso) {pesoInicial = unPeso}
    method peso() {return (pesoInicial-comido).max(0)}
    method sabor(){
        return chocolate
    }
    method libreDeGluten(){
        return false 
    }
    method mordisco(){
        comido=comido - 2
    }
}

object golosinaBaniada{
    var golosinaBase = {}
    var pesoBaniado =  4 

    method golosinaInterior(unaGolosina){golosinaBase = unaGolosina}
    method pesoBaniado(unaGolosina) = golosinaBase.peso() + pesoBaniado
    method precioBñado() = golosinaBase.precio() + 2
    method sabor(){return golosinaBase.sabor()}
    method libreDeGluten(){
        return golosinaBase.libreDeGluten() 
    }
    method mordisco(){
        golosinaBase.recibeUnMordisco()
        pesoBaniado = (pesoBaniado -2).max(0)
    }
}
object pastillaTuttiFrutti {
    var libreDeGluten = true
	const sabores = [frutilla, chocolate, naranja]
	var saborActual = 0
	
	method mordisco() { saborActual += 1 }	
	method sabor() { return sabores.get(saborActual % 3) }	

	method precio() { return (if(self.libreGluten()) 7 else 10) }
	method peso() { return 5 }
	method libreGluten() { return libreDeGluten }	
	method libreGluten(valor) { libreDeGluten = valor }
}  