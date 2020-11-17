# Among Us

El enunciado pueden encontrarlo haciendo click [acá](Enunciado.md).

## Decisiones

### Punto 1

Se opta por una clase `Jugador` ya que:

* Cada uno de ellos tiene un `nivelSospecha` distinto

* Cada uno de ellos calcula de la misma manera si `esSospecho`.

### Punto 2

Es por eso que la responsabilidad de poner el método `buscar(unItem)` fue colocada en la clase `Jugador` porque:

* Todos los jugadores buscan ítems

* Todos tienen mochila. 

Además se decide que la mochila sea una lista ya que el enunciado no especifica si puede tener dos veces el mismo ítem o no.