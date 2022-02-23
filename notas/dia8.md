player: datos_jugador-> IVAN




RAM
    - DJ[Ivan]              <<      player
    - DJ[Ivan]'             
    - Vector                <<      DATOS_JUGADORES
        - Referencia DJ[Ivan] o referencia DJ[Ivan]'
        
        
Libreria de Jugadores... permite getionar muchos jugadores.
Los voy a gestionar de 1 en 1? Variable jugador actual dentro de la libreria
    Que limitacion tiene esto? threadsafe. Admite concurrencia?

Qué pasamos todo el rato en las funciones? Ahora un puntero... antes un record
Qué me podría interesar pasar? Indice del vector <<<< identificador
Identificador de un jugador? nombre/email

Cada vez que queremos obtener un jugador... necesitamnos hacer una consulta por nombre

Vector? NO
Map hash

Ivan.   [] -> Numerica Aplicar algoritmos de búsqueda avanzados. busqueda binaria
Lucas.  []
conchi. []

algoritmo de hash? hash= HUELLA

MD5
LETRA DNI

Ada.Strings.Hash