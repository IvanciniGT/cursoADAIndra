# Programación Orientada a Objetos

Paradigma de programación. Un estilo.. una forma de escribir un programa.

Tenemos la capacidad de definir nuestros propios tipos especializados con su lógica propia < Clases
Un objeto: Una instancia de una clase.

Por qué se caracteriza?

√ Un objeto tiene una serie de datos.
√ Un objeto tiene lógica (funciones).
√ Herencia
----
√ polimorfismo.


Polimorfismo:
    Puedo definir funciones que se llaman igual y que reciben distintos tipos de datos y tienen lógicas distintas.

Representacion de la realidad

variable   Tipo
numero:    Integer
    
instancia       Tipo... con su propia lógica + .... -> Clase
fig1:           FiguraGeomética


# En ADA 95, sale la palabra tagged < Record:

- Los tipos nuevos creados desde un tipo tagged...
  pueden tener sus propios datos adicionales.
- Un subtipo defina su propio comportamiento ante funciones ya  definidas a nivel del tipo original
- Podemos utilizar la notación .


Juego?

Prueba Juego
  -> jugarMano (JuegoAdivinarNumero) -> mostrarMensaje(JuegoAdivinarNumero)
  -> jugarMano (JuegoAdivinarNumero) -> mostrarMensaje(JuegoNumeroFrioCaliente)
  -> JugarMano (JuegoAdivinarNumero) -> mostrarMensaje(JuegoNumeroArribaAbajo)
  
  

Jugar.adb
    |
    V
  Partidas
    - Jugador?
    - Juego  ?
        - Juego AdivinarNumeros
            - Basico
            - FrioCaliente
            - Arriba Abajo
        -Juego PiedraPapelTijera
    - Manos  ?
    --> Jugar Manos Pertinentes