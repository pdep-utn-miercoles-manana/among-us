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

### Punto 3

Nos topamos con que los jugadores deben responder si completaron todas las tareas o no. Hay 2 tipos de jugadores, los `tripulantes` y los `impostores`. Se decidió plantearlo con herencia ya que nada indica que el tripulante o impostor puedan cambiar al otro tipo de jugador durante la ejecución. Es verdad que se puede plantear con composición pero creemos que el pasamanos que implica hacerlo de esa manera es más engorroso que con la herencia.

Se decidió poner la lista de tareas en la clase `Jugador` ya que el enunciado dice que los jugadores tienen tareas, pero no sería descabellado pensar en poner ese atributo directamente en la clase `Tripulante` ya que el impostor no hace nada con esas tareas.

Se planteó el método abstracto `completoTodasLasTareas()` en la clase jugador para forzar que esta sea una clase abstracta y forzar que quien herede de ella implemente ese método.

### Punto 4

El hecho que las tareas **no tengan estado mutable** hace que puedan ser modeladas como objetos. Esto también posibilita que las tareas se repitan entre los jugadores pero no hay problema ya que cuando terminamos una tarea la removemos de la lista de tareas del jugador.
