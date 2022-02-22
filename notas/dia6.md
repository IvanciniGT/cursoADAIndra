Guardar un fichero con nuestros jugadores.
------------------------------- 
Ivan
ivan@gmail.com
109
10
|Nestor         | 10 bytes para el nombre... Cuantos caracteres puedo poner?
citoor@gmail.com
19
18
Néstorcit          | ISO-8859-1
nestocitor@gmail.com
19
18
petri
petri@petro.com
0
0
luciano
lucio@lici.com
0
0

XML... qué me aporta? Estructura... para saber cómo leer los datos... estandar... validacion
XML formato de intercambio de información, JSON, YAML
-------------------------------
<jugador>
    <nombre> Ivan </nombre>
    <email> ivan@gmail.com </email>
    <juagdas> 20 </juagdas>
    <ganadas> 18 </ganadas>
</jugador>
<jugador>
    <nombre> Ivan </nombre>
    <email> ivan@gmail.com </email>
    <juagdas> 20 </juagdas>
    <ganadas> 18 </ganadas>
</jugador>
<jugador>
    <nombre> Ivan </nombre>
    <email> ivan@gmail.com </email>
    <juagdas> 200000 </juagdas>
    <ganadas> 18 </ganadas>
</jugador>
<jugador>
    <nombre> Ivan </nombre>
    <email> ivan@gmail.com </email>
    <juagdas> 20 </juagdas>
    <ganadas> 18 </ganadas>
</jugador>

-------------------------------

Cuando llegue un nuevo jugador... lo añado al final? BIEN? OK

Cuando borre un jugador?

Cuando cambio el email de un jugador

---------------
Cuantas formas hay de acceder a un fichero?
Acceso secuencial   -   Vamos linea a linea
    Ventajas: 
        - El ancho de cada dato... el que me de la gana... No está preestablecido
        - No hay desperdicio de espacio
        - Es sencillo
    Limitaciones:
        - Cada cambio... he de reescribir todo
        - Acceso lento a los datos... 
Acceso aleatorio    -   Me pongo donde yo decida del fichero...para leer o escribir.
    Limitaciones:
        - El ancho de cada dato va establecido de antemano... OJO EN BYTES !!!!!!
        - Desperdicio de espacio es enorme
        - Es complejo... el ponerte donde debes... Lo primero para saber donde tengo que escribir es?
        VEntajas:
        - Acceso rápido a los datos
        - Actualizaciones rápidas

Fichero? Conjunto de bytes
UBICACIONES:
Nombre del primer jugador?                   1
Email del primer jugador?                    6
Partidas jugadas por el primer jugador?     21.  Ocupa 2 bytes... Siempre?

Iván ha ganado una nueva partida




Cuando el programa arranque: Cargo datos del fichero en RAM
Cualquier busqueda se hace sobre los datos de la RAM
Cuando modifico algo:
    Lo modifico en RAM y en el fichero
Cuando elimino algo:
    Lo elimino en RAM y en el fichero
    
Para qué hago lo del fichero? Para que la siguiente vez que arranque el programa, pueda cargar la situación anterior.

VECTOR JUGADORES????        CACHE (almacen de datos no persistente que ofrece un acceso rápido a la información)
FICHERO JUGADORES:          Persistencia


Al montar un software hay 2 grandes usos de la memoria RAM:
    - Almacenar datos de trabajo
    - Cache
    
    
DEPENDENCIA
Mi juego Piedra Papel Tijera: Depende del paquete Jugadores


# Sistemas de Control de versión:

Ninguno
Subversion
CVS

git??? 
Linus Torwalds < Kernel Linux:    Linus' Unix 
CVS

## Para que sirve un SourceCodeManager - SCM
    Controlar versiones ... bueno.... Sistema de backup?
        Versiones secuenciales de mis archivos.
    RAMAS !!!!!!!
        Versiones simultaneas de mis archivos.
    Trabajar en paralelo en diferentes versiones de mi proyecto.

Archivo que un momento dado del tiempo tenga 3 versiones del mismo.
El que hago yo...
El que está modificando mi compañero.
El que esta modificando mi otro compañero.

GIT -> REPOSITORIO:
Una especie de BBDD... donde tenemos:
    - Codigo fuente... mis ficheros
    - Todas las versiones que han existido de esos ficheros
    - Quien hizo los cambios de un determinado fichero en un momento del tiempo
    - Historial completo de mi proyecto

En un repositorio disponemos de RAMAS:
Una rama es una linea de tiempo paralela de evolución de mi proyecto

En una RAMA guardamos COMMITS.

COMMIT: Fotografía completa del estado del proyecto en una rama concreta,
en un momento concreto del tiempo.

Versión de software

Hay commits (fotos, instantaneas) que son de especial relevancia dentro del historial.
Por ejemplo, por ser la que voy a distribuir a un cliente. Esas fotos (commits) los etiquetamos: TAG

Cuando usamos un SCM, siempre vamos a tener varias ramas:
PRINCIPAL: main, master, trunk
    Regla de oro de un sistema de control de versión con respecto a la rama principal:
        NUNCA JAMAS EN LA VIDA TOCAR NADA EN LA RAMA PRINCIPAL: PROHIBIDO CREAR UN COMMIT EN LA RAMA PRINCIPAL
        
UN PROYECTO <> REPOSITORIO
CÓMO SE ORGANIZAN LAS COSAS DENTRO DE UN REPO: WORKFLOWS cada empresa define el suyo.

Lo que hay en la rama principal se entiende que está apto para producción.

REPO: PROYECTO A
    
    HOTFIX. ---------------------------------------------------------C10------C11------------------>
                                                                   /              \
    PRINCIPAL ----------------------------------------------------C(version 1.0.1)-C(version 1.0.2)------>
                                                                 /                      jugadores.adb
    DESARROLLO --- C1 ---- C2 --- C3 ---- C4 (version 1.0.0) -- C7 (version 1.0.1) ----- C9 ------->
                                            \                    \                        
    TEST    ----------------------------------- C5 --- C6 ---------- C8---------------------------->
                                                                                         

Independencia de cada rama...

Antiguamente: Sistemas monilíticos. Sistemas modulares.. Servicios microservicios (HTTP)

Formas de usar modulos externos:
    Yo me lo como
    Dejar que se encargue el sistema de control de version
    
    
                        REPOSITORIO REMOTO
    -------------------/                  \------------
    |                                                 |
Programador 1                                       PROGRAMADOR 2
REPO LOCAL                                          REPO LOCAL

principal   --------C1----------------
                  /
desarrollo. ---- C1 (Alta del proyecto)---C3-----
                  \
test -------------- C1 ---- C2 (inicio pruebas) -----------


gnatmake -I ../5-Jugadores partida.adb
gnatmake -I /home/ubuntu/environment/curso/ejercicios/5-Jugadores partida.adb