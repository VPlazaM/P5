# Practica Laboratorio #5 - VIRTUAL - INDIVIDUAL

## Víctor Plaza Martín - alu4329

##Respuestas:

### ¿Cuál es el error en el código del método para calcular el máximo común divisor?

El error se encuentra en el `while` ya que es obvio que cuando le asignamos un valor diferente de 0 a `v` en la inicialización de las variables nunca cumplirá con la condición expuesta en él para la resolución del problema del MCD.

En su lugar, la sentencia `v == 0` debería ser sustituida por `v != 0`.


### ¿Qué comandos del depurador utilizó para detectarlo? Describa la sesión de depuración.

* Primeramente utilicé el comando `display u` y `display v` para realizar un seguimiento de las variables u y v en el proceso de depuración.
* El segundo paso fue ejecutar `next` para llamar al método.
* Después fui ejecutando el código paso a paso a través del comando `step` para poder realizar una traza completa y me percaté de que no entraba en el bucle while.


La solución fue cambiar la condición del while como expliqué anteriormente y realice una traza análoga a la anterior, pero esta vez con un resultado exitoso.


###Comandos de ejecución:

* Para la ejecución del programa:

	$ ruby racional.rb

* Para la ejecución de los test asociados:

	$ ruby tc_racional.rb
