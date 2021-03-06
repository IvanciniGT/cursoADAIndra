-- Teniendo en cuenta que quizás algún día nos interese aumentar su funcionalidad
with Ada.Integer_Text_IO;               use Ada.Integer_Text_IO;
with Ada.Text_IO;                       use Ada.Text_IO;
with Partida;                           use Partida;
with PiedraPapelTijeraOpciones;         use PiedraPapelTijeraOpciones;
with UITerminalPiedraPapelTijera;       use UITerminalPiedraPapelTijera; ---?
with ada.numerics.discrete_random;                      

package body LibreriaPiedraPapelTijera is
    
    overriding function JugarMano( juego: PiedraPapelTijera ) return Partida.Resultado is
    
        package EleccionOrdenadorAleatoria is new Ada.Numerics.Discrete_Random
        (
            Result_Subtype    => OPCION
        );
        use EleccionOrdenadorAleatoria;
        GENERADOR_ELECCIONES_ORDENADOR: Generator;
        
        
        mano_ordenador:                 OPCION;
        mano_jugador:                   OPCION;
        ganador_mano:                   Partida.Resultado;
        reglas:                         REGLAS_JUEGO;
            --INDICES:    0.      1.     2
            --VALORES.    PIEDRA  PAPEL. TIJERA
        -- cargar reglas
               -- Jugador.  -- Ordenador
    begin
        -- Cargar reglas
        reglas:= PiedraPapelTijera'Class(juego).cargarReglas;

        -- El ordenador piensa en Piedra, Papel, Tijera
        --mano_ordenador := GENERADOR_ELECCIONES_ORDENADOR.random; -- TODO: Hacer que esto sea aleatorio
        reset(GENERADOR_ELECCIONES_ORDENADOR);
        mano_ordenador := random(GENERADOR_ELECCIONES_ORDENADOR); -- TODO: Hacer que esto sea aleatorio
        -- Y pregunta al jugador por su opción- UI
        mano_jugador := obtener_opcion_jugador;
        -- Calculo ganador de la mano
        ganador_mano := reglas (mano_jugador, mano_ordenador);

        return ganador_mano;
        
    end JugarMano;
        
    function cargarReglas( juego: PiedraPapelTijera ) return REGLAS_JUEGO is
        reglas: REGLAS_JUEGO;
    begin
        
        reglas(     PIEDRA ,    PIEDRA      ) :=    EMPATE;
        reglas(     PAPEL  ,    PAPEL       ) :=    EMPATE;
        reglas(     TIJERA ,    TIJERA      ) :=    EMPATE;
        
        reglas(     PIEDRA ,    TIJERA      ) :=    JUGADOR;
        reglas(     PAPEL  ,    PIEDRA      ) :=    JUGADOR;
        reglas(     TIJERA ,    PAPEL       ) :=    JUGADOR;
        
        reglas(     PIEDRA ,    PAPEL       ) :=    ORDENADOR;
        reglas(     TIJERA ,    PIEDRA      ) :=    ORDENADOR;
        reglas(     PAPEL  ,    TIJERA      ) :=    ORDENADOR;
        
        return reglas;
    end cargarReglas;
    
end LibreriaPiedraPapelTijera;