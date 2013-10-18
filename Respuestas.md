# Practica Laboratorio #5 - VIRTUAL - INDIVIDUAL

## Víctor Plaza Martín - alu4329

##Respuestas:

### ¿Cuál es el error en el código del método para calcular el máximo común divisor?

El error se encuentra en el 'while' ya que es obvio que cuando le asignamos un valor diferente de 0 a 'v' en la inicialización de las variables nunca cumplirá con la condición expuesta en él para la resolución del problema del MCD.

En su lugar, la sentencia 'v == 0' debería ser sustituida por 'v != 0'.


### ¿Qué comandos del depurador utilizó para detectarlo? Describa la sesión de depuración.












:::ruby

 gcd.rb:1:def gcd(u, v)
(rdb:1) display u
1: u = 
(rdb:1) display v
2: v = 
(rdb:1) next
gcd.rb:9:puts gcd(6,3)
1: u = 
2: v = 
(rdb:1) step
gcd.rb:2:  u, v = u.abs, v.abs
1: u = 6
2: v = 3
(rdb:1) step
gcd.rb:3:  while v != 0
1: u = 6
2: v = 3
(rdb:1) step
gcd.rb:4:    u, v = v, u % v
1: u = 6
2: v = 3
(rdb:1) step
gcd.rb:6:  u
1: u = 3
2: v = 0
(rdb:1) step
3

