# Definir una variable
    
                        OPCIONAL
NOMBRE-VARIABLE: TIPO [:= VALOR-INICIAL];

# TIPOS INCLUIDOS CON ADA:

- Integer
- Float
- Boolean
- String
- Natural

# TIPOS PERSONALIZADOS... De hecho lo hacíamos de continuo

## Un nuevo tipo personalizado basado en otro

type NOMBRE-TIPO-PERSONALIZADO is new TIPO-BASE range VALOR-INICIAL .. VALOR-FINAL;

## Un nuevo tipo enumerado

type NOMBRE-TIPO-PERSONALIZADO is (VALOR1, VALOR2, VALOR3);

### Ejemplo

type MES is (ENERO, FEBRERO, MARZO, ABRIL, MAYO, JUNIO, JULIO, AGOSTO, SEPTIEMBRE, OCTUBRE, NOVIEMBRE, DICIEMBRE);

Valores posibles: 12
bits? 1 bits -> 2... 2 bits -> 4 valorea, 3 bits -> 8 valores, 4 bits -> 16 valores.

type MESES_VERANO is MES range JULIO .. SEPTIEMBRE;



# Condicionales => Control de flujo

Cambiar el comportamiento de nuestro programa en tiempo de ejecución. 
Crear un programa dotado de reglas lógicas, que sea capaz de tomar deciciones cuando se ejecuta.

Reglas lógicas. Básicamente que es una regla lógica?
?
Atiende a una condición o un estado dicotómico: 2 valores: True y False

- Si se cumple una condición haz unas tareas
- Pero si no se cumple y en cambio se cumple esta otra condicion has otras tareas
- Si no se cumple haz otras tareas diferentes

if REGLA-LOGICA-1 then
    -- Operaciónes que se realizarán si se cumple la regla lógica 1 (TRUE)
elsif REGLA-LOGICA-2 then
    -- Operaciónes que se realizarán si se cumple la regla lógica 2 (TRUE)
else
    -- Operaciones que se ejecutarán si no se cumplen ninguna de las reglas establecidas anteriormente
end if;


# En el mundo del desarrollo de software hablamos de ciertos 
  términos que es importante tener en cuenta y entender:
 
- Orden de complejidad de un algoritmo: NO ES TAN RELEVANTE.
    Coste computacional....
        ME INFORMA cúanto más va a costar ejecutar este programa
        según crece el conjunto de datos inicial.
        Cuánto es el conjunto de datos inicial? 
            NUMERO: Integer. Tengo 1 número.
            Podemos tener en momento 2 números? NO
            Mi programa solo tiene 1 número.

- Complejidad cognitiva?
    Cuánto le cuesta a un ser humano interpretar mi código.

- Complejidad ciclomática?
    Número de caminos distintos que puede tomar el programa 
        >>>> VALIOSÍSIMO
    ¿ Cuántas cosas diferentes podría hacer este programa ?
        5
    
    NUMERO 0 : TAREAS?
        Ninguna -                   1 Camino que sigue mi programa

    NUMERO 1 : TAREAS?
        TAREA 2 -                   Otro camino
    
    NUMERO 6: TAREAS?
        TAREA 1                     Otro camino
        TAREA 2
    
    NUMERO 11: TAREAS?
        TAREA 1                     Otro camino
        TAREA 2
        TAREA 4
        
    NUMERO 16 o 16.000.000: TAREAS?
        TAREA 1                     Otro camino
        TAREA 2
        TAREA 3
    
    Con qué tiene que ver ese dato?
        Número mínimo de pruebas que he de realizar en mi código.
        ^^^^
        BASICO
        
    Pruebas de software?
        Os gusta hacer pruebas? 
        En general, a cualquier desarrollador del mundo...
            te gusta hacer pruebas? NI DE COÑA !!!
    
    Pruebas automatizadas de software: 
        Pruebas unitarias: Frameworks de pruebas unitarias. ADA lo hay.
        
        Que me permiten? Seguir programando.
            Programas que prueben mi programa
            

Una cosa es que el código (programa) funcione: MINIMO
Otra cosa es que el código sea DECENTE !

Cobertura de código? Se mide en un %
Código respaldado por pruebas unitarias AUTOMATIZADAS. 70%


Metodologías de gestión de proyectos de software
    Metodología en cascada... metodologías en V, espiral...
        ESTO ESTA TOTALMENTE OBSOLETO. 
        ESTO NO SE USA DESDE HACE MUCHOS AÑOS
    
    Metodologías ágiles: Iteración: Entrega incremental del software
        2 semanas quiero una versión del software 100% funcional
            a lo mejor esa versión solo incluye el 5% de la funcionad total
        

Metedologías de desarrollo de software
    TDD: Test Driven Development
    Lo primero que vamos a hacer es las pruebas unitarias.

Hito = Metodologias en cascada
    Hito 1: a fecha 10 de marzo tienen que estar estos 5 puntos
    Hito 2: a fecha 20 de marzo tienen que estar estos 10 puntos

Iteración (SPRINT) = Metodologias ágiles (SCRUM)
    Iteración 1: a fecha 10 de marzo tienen que estar estos 5 puntos
    Iteración 2: a fecha 20 de marzo tienen que estar estos 10 puntos

Que pasaba si llegaba a la fecha del hito y no tengo los 5 puntos?
    El hito iba con retraso...
    Cuando acababa el hito? El hito acababa cuando los 5 puntos se completaban
                            El proyecto iba con retraso --> 27 de Marzo
    
Qué pasa si llega la fecha de la iteración (Sprint 1) y no estás hechos los 5 puntos?
    El print se cierra... y se instala al cliente en fecha
    El sprint se cierra el dia 10.. E instalo en producción al cliente.
        A lo mejor le monto solo 3 puntos. Los otros 2 se replanifican para la siguiente iteración.
    
    Eso significa que en cada sprint tengo que hacer pruebas DE PRODUCCION
        Una bateria de pruebas de flipar !!!!
        
    Sprint 1 hemos montado 5 puntos
        Hago muchas pruebas
    
    Sprint 2 hemos montado otros 4 puntos
        Qué pruebo?
            Hago muchas pruebas para los 4 nuevos puntos
            Tengo que repetir TODAS LAS PRUEBAS de los 5 primeros puntos
                ^^
                Pruebas de REGRESION
    
    No hay recursos para acometer tan magna tarea... 
        SOLO HAY UNA SOLUCION A ESTE DILEMA: AUTOMATIZAR
        
        
    




    