# Lenguaje ADA

Lenguaje de programación.

## Respecto a la gestión de tipos de variables:
    √ Tipado estático:
        Si declaramos las variables de un tipo... son de ese tipo siempre...
    x Tipado dinámico
    
## Paradigma del lenguaje

### Qué es un paradigma?
    Forma de programar...
    programar? Escribir código para qué? Para dar órdenes (instrucciones) a un ordenador.
    Básicamente programar es escribir un documento (varios), indicando una secuencia de ordenes a un computador.
    
    Libro de recetas escrito en castellano? Biblioteca de programas
        Cada receta? Programa: Conjunto/secuencia de instrucciones
    
        Si doy, paso a paso, cada orden a un bermudillo que las ejecutará (cocinero)... que tipo de paradigma uso? Imperativo
        Programación procedural, aplicada al mundo de las recetas? 
            Reutilizar código
            Receta de: croquetas de bacalao
                Paso 1: Preparar una bechamel: Vease página 17 del libro. < Llamada a un procedimiento o función
                Paso 2: Agrege a la bechamel bacalao.
                ....
        
        Orientación a Objetos? Te doy al cocinero que sabe hacer las croquetas.
            cocinero=new CocineroCroquetas()
            cocinero.aTrabajar()
        
        Programación funcional: JS + Python + Java (+1.8) [Scala, Kotlin -> (bytecode).class -> JVM]
            Capacidad de referenciar una función/procedimiento desde una VARIABLE => Que una función puede recibir o devolver otra función
                Lo cambia todo.
            "En la programación funcional, consideramos a las funciones ciudadanos de primer nivel, igual que a un dato"

### Tipos de paradigmas
    Imperativo              JAVA    C   C++     ADA
        
    Procedural              JAVA    C   C++     ADA
    Funcional               JAVA    C   C++     ADA
    Orientado a Objetos     JAVA    -   C++     ADA

## Modelo de distribución/ejecución
    Al final, quién ejecuta mi programa, y con quién se comunica? Kernel del Sistema Operativo
    El SO que yo tenga instalado en un ordenador / computadora.. sabe de ...?
    - C? Ni p... idea
    - JAVA? NAsty de plasty
    El SO habla su propio lenguaje. Cada sistema operativo define su API.
        POSIX? Especificación de cómo montar un sistema operativo PORTABLE basado en UNIX®.
        
    Para ejecutar un programa que yo he creado en un SO(Linux, UNIX: Solaris, HP-UX, AIX, Windows), necesito 
        TRADUCIR mi programa en el lenguaje que entienda el SO.
    
    Compilados: Pretraducción de mi código antes de distribuirlo
        Ventajas: 
            - Más seguros? Capacidad de detectar problemas en un programa antes de su ejecución.
            - Su ejecución es más rápida.
        Desventajas:
            - Compilo contra un SO concreto. Complica la distribución del software.
            
        La compilación (TRADUCCION DEL CODIGO) es llevada a cabo por un compilador: ADA: gnat
                                                                                          V basado en...
                                                                                    C:   gcc 
            De donde viene la g? GNU. Una organización (empresa) que fabrica software libre 
                                      Son  los que originalmente hablan de opensource.
                                      GNU distribuye software Opensource bajo licencia GPL: GNU Public License.
                gedit
                gnome
        Vale solo con la compilación.... Me temo que no... Existe un proceso adicional que hacemos en muchos lenguajes
            despues de la compilación: LINKADO: Ensamblado: Ensamblador: El mismo que en C... make
            
        Al trabajar en ADA muchas veces hacemos la compilación y el ensablado usando un unico comando: gnatmake
        
        En ADA, los ficheros tiene extensión: .adb -> compilarlo -> .o -> ensamblado -> binario ejecutable / libreria
                                                        gnat                make
                                                                gnatmake
        
        Ejemplos: C, C++, ADA
        
    Interpretados: Traducción de mi código en tiempo de ejecución
        Ejemplos: Python (cython, jython, pypy) , JS (nodeJS), BASH
        Ventajas: 
            - Al no compilar contra ningún SO... puesto que no se compila, distribuyo directamente el fuente de mi programa.
            ... Más vale que en la máquina donde se quiera ejecutar aquello haya un INTERPRETE ADECUADO
        Desventajas:
            - No tengo tanta capacidad de detectar problemas en un programa antes de su ejecución.
            - Su ejecución es más lenta.
            
    Java: Compilado + Interpretado simultaneamente. Ambas 2.



## Qué es una Variable?

Un referencia a un contenedor con un nombre que puede almacenar un dato en memoria de un tipo específico √√√

### Ejemplo 1
    
    variable NUMERO_DE_HORAS=17
    Lo primero que se ejecuta en esta instrucción es:
        17 => Pon el la RAM el número 17
        variable NUMERO_DE_HORAS => Define una variable (coge un postit y escribe en él NUMERO_DE_HORAS)
        = => Referencia el valor desde la variable (pega el postit al lado de ese número que has escrito en la RAM)
    
### Ejemplo 2
    variable NUMERO_DE_HORAS=17
    NUMERO_DE_HORAS=18
        En JAVA, python, JS, en este momento del código habría 2 valores en RAM 17, 18
            Al lado del 18, estaría pegado el postit (mi variable)
            El número 17... es localizable? Malamente (que tendría que conocer? La dirección de Memoria)
            En estos lenguajes, al no poder controlar direcciones de memoria (punteros), el dato quedaría inaccesible.
                Datos inaccesibles = BASURA: GARBAGE
            Si generar basura no es bueno ( y no lo es), por qué en JAVA, JS, Python, por diseño se hizo que generasen basura?
            Para facilitar al desarrollador, el desarrollo, y olvidarse de la gestión de memoria:
                - 1ª Complejo... requiere horas de trabajo... muchas
                - 2º Da lugar a muchos potenciales errores.
                        Memory Leak: Me olvide de borrar algo de la RAM y liberarla al SO... 
                        Mi app crezca en RAM sin límite. PROBLEMA GORDO        
            
        C, C++, ADA
            En estos lenguajes, tenemos mucho control de la RAM... y de lo que allí ocurre.
            Lavadora inteligente (RADAR) < maquina/ordenador ... qué sale más barato, más RAM o más horas de desarrollador.
                RAM muy limitada. No me puedo permitir hacer un mal uso (abuso) de la memoria RAM... e ir generando BASURA.
                
            Puntero: Una dirección en mamoria RAM: El número de cuadrito en el cuaderno en el que tengo algo guardado
            
            
## SO:
Ubuntu, Debian, Suse, Redhat (fedore, CentOS, Oracle Linux)... GNU / Linux (kernel)
                                                                70%  30%
Otros SO que no son GNU/Linux, aunque llevan el kernel de Linux? El más usado del mundo... con mucha diferencia: Android

MAcOS esta basado en el kernel de BSD y es un SO UNIX®


# Por qué surje ADA?

Departamento de Defensa de USA. Por qué? Que problema tenía?
    Estaban haciendo mogollón de apps. software... y había cienes y cienes de lenguajes de programación.
    Deciden crear un lenguaje nuevo, y usarlo para TODAS SUS APLICACIONES.
    Lo sacan a concurso:
    Queremos un lenguaje que haga estas cosas....? a ver quien lo hace y le damos un premio => ADA

# Principios de diseño de ADA

√ LEGIBILIDAD PRIMA SOBRE TODO !!!!!!!!
    Un programa se escribe una vez... pero se modifica muchas a lo largo de su vida... y se lee muchas más veces.
    No me importa gastar tiempo al escribir código.. peo que todo quede muy clarito !!!!!!

√ Explicito es mejor que Implicito ! 
    Que todo sea explicitado en el código, hasta sus últimas consecuencias.


# Instalar gnat

## Debian > Ubuntu: distribudor/instalador de paquetes que usamos? apt, apt-get
    
    $ sudo apt install gnat -y
        # sudo en UNIX : me permite acceder temporalmente a permisos de administrador
## Redhat:                                                         yum



## Al hacer un listado de archivos en Linux, con informacion extendida, salen 10 caracteres al principio de cada linea:
        
                                            
-rwxrwxr-x 1 ubuntu ubuntu 23384 Feb 14 11:34 holamundo
                    ^ grupo
               ^ propietario                  ^ archivo

-rwxrwxr-x
Primer caracter: Lo que es.
    - Fichero
    d Carpeta (directorio)
    l Symbolic link: Enlace simbólico: Acceso directo.

Los otros 9 caracteres: Permisos:
    Van en grupos de 3: ---   ---   ---
                                    ^ Permisos para el resto del mundo
                              ^ Permisos del grupo (Un archivo va asociado a un grupo de usuario)
                        ^ Permisos del propietario del archivo (Un archivo en UNIX/Linux tiene un propietario)
    
    ---
      ^ Si es ejecutable: x: execution: ejecutable 
     ^ Si es nmodificable: w: write : escritura
    ^ Si es legible: r: read : leer

# Como cambiamos permisos de un archivo?
$ chmod   > change mode > cambiar permisos
$ chmod PERMISOS arhivo

PERMISOS: 
    +w +r +x
    777
    664
    755

--- 000
rwx 111
r-x 101

r-- 100 > 4
-w- 010 > 2
--x 001 > 1

rwx ->    7
r-x ->    5
-wx ->    3

# Si intento ejecutar un programa por linea de comandos (terminal) TENGO QUE DARLE LA RUTA DEL PROGRAMA

Si no lo hago, que hace el SO? Buscarlo en el PATH

Qué es el PATH? Una VARIABLE DE ENTORNO que tenemos en todo sistema operativo.
Cuando llamo a un probgrama sin pasarle la ruta, el SO lo va a buscar dentro de alguna de las carpetas definidas en el PATH

Para ver las variables de entorno: env

Para añadir nuestra carpeta al PATH:
export PATH=$PATH:.


# Tipos de datos en ADA

En cualquier lenguaje de programación hay una serie de TIPOS DE DATOS predefinidos.

# Tipo de datos? 

El dato se guarda en LA RAM... o en un fichero (HDD). Cómo se guarda ahí dentro el dato?

Bits < 1 y 0 ... Se guarda así el dato? NOP
Entienden los ordenadores de 1 y 0? NOP
Los ordenadores entienden de estados binarios:
    Tal sector de la memoria RAM está magnetizado o no? Representación gráfica de ese concepto 0-NO ... y 1-SI

0001110101010101010101

Mínima unidad de almacenamiento de información en un compotador digital (binario): bit
Cuantos datos diferentes puedo guardar en un bit? 2: 0 ó 1.. Qué significan?
    valor del bit   significado (LO QUE YO QUIERA)
    0               - NO            Dispara el misil            Esta lloviendo          Enciende la luz roja
    1               - SI            No dispares el misil        No está lloviendo       Enciende la luz azul

Agrupar bits... me permite representar más cantidad de valores distintos:
¿Quieres cenar? SI-0    NO-1
¿Quieres cenar pollo, cerdo, pescado o ensalada?  00 pollo, 01 cerdo, 10 pescado, 11 ensalada


1 bit puedo dar    2 datos diferentes.    0 1
2 bits puedo dar   4 datos diferentes.    00 01 10 11
3 bits?            8 datos diferenets     000 001 010 011       100 101 110 111
4 bits?            16                     0000 0001 0010 0011       0100 0101 0110 0111.    1000 1001 1010 1011       1100 1101 1110 1111
5 bits
6 bits
7 bits
8 bits             256

¿Cómo le digo, le explico al ordenador, cómo quiero interpretar una secuencia de bits? Lo que significa?
Tipo de dato < Me ayuda a explicar al ordenador (computadora) el significado que para mi tiene una determinada secuencia de bits


1 byte = 8 bits... Cuantos valores puedo guardar? 256
            NUMEROS ENTEROS POSITIVOS Y NEGATIVOS
                            NUMEROS ENTEROS NO NEGATIVOS        CARACTER
00000000        -127            0                                   a           POLLO
00000001        -126            1                                   b           PESCADO
...
01111111        0
10000000        1                                                   H           ENSALADA DE TOMATE 
10000001        2
10000010        3
...
11111111        128           255

9 bits?         0-511

ADA es un lenguaje muy especial con los tipos de datos... PRACTICAMENTE NO TIENE TIPOS DE DATOS
TENGO QUE DEFINIRLOS YO. Y LA NORMA ES AUNQUE EXISTAN, LOS DEFINO YO. Por qué? Explicito es mejor que Implicito ! 

No quiero que 2 compiladores distintos puedieran hacer una interpretación diferente.. Mejor lo explicito.






                
