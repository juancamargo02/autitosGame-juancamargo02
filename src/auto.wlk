import wollok.game.*

object auto {
	// definimos los atributos para imagen y posición de nuestro elemento
	var image = "autitoVerde.png"
	var position = game.at(7,4)

	// definimos los getter y setter para poder preguntarle y cambiarle 
	// a nuestro elemento su imagen y posición. 
	method image() = image
	method position() = position
	method image(nuevaImagen) { image = nuevaImagen }
	method posicion(nuevaPosicion) { position = nuevaPosicion }
	
	method moverDerecha(cantidad) {
		position = position.right(cantidad)
	}
	
	method moverIzquierda(cantidad) {
		position = position.left(cantidad)
	}
	
	method moverAbajo(cantidad) {
		position = position.down(cantidad)
	}
	
	method moverArriba(cantidad) {
		position = position.up(cantidad)
	}
	
	method sonidoExplosion() {
		game.sound("explosion.mp3").play()
	}
}

object dinamita {
	
	// Atributos del objeto
	var property image = "dinamita.png"
	var property position = game.at(10,10)	
}