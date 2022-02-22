-- Teniendo en cuenta que quizás algún día nos interese aumentar su funcionalidad
with Ada.Integer_Text_IO;               use Ada.Integer_Text_IO;
with Ada.Text_IO;                       use Ada.Text_IO;
with Partida;                           use Partida;
with UITerminalPiedraPapelTijera;       use UITerminalPiedraPapelTijera; ---?

procedure JugarPiedraPapelTijera is
    
    type OPCION is (PIEDRA, PAPEL, TIJERA);
    
    function PiedraPapelTijera() return RESULTADO is
        mano_ordenador:                 OPCION;
        mano_jugador:                   OPCION;
        ganador_mano:                   RESULTADO;
        reglas:                         array (OPCION, OPCION) of RESULTADO;
            --INDICES:    0.      1.     2
            --VALORES.    PIEDRA  PAPEL. TIJERA
        -- cargar reglas
               -- Jugador.  -- Ordenador
        reglas(     PIEDRA ,    PIEDRA      ) :=    EMPATE;
        reglas(     PAPEL  ,    PAPEL       ) :=    EMPATE;
        reglas(     TIJERA ,    TIJERA      ) :=    EMPATE;
        
        reglas(     PIEDRA ,    TIJERA      ) :=    JUGADOR;
        reglas(     PAPEL  ,    PIEDRA      ) :=    JUGADOR;
        reglas(     TIJERA ,    PAPEL       ) :=    JUGADOR;
        
        reglas(     PIEDRA ,    PAPEL       ) :=    ORDENADOR;
        reglas(     TIJERA ,    PIEDRA      ) :=    ORDENADOR;
        reglas(     PAPEL  ,    TIJERA      ) :=    ORDENADOR;
    begin
        -- El ordenador piensa en Piedra, Papel, Tijera
        mano_ordenador := PIEDRA; -- TODO: Hacer que esto sea aleatorio
        -- Y pregunta al jugador por su opción- UI
        mano_jugador := obtener_opcion_jugador();
        -- Calculo ganador de la mano
        ganador_mano := reglas (mano_jugador, mano_ordenador);
        -- Lo proclamo... Comunico resultados de la mano
        proclamar_ganador_mano(ganador_mano); -- TODO???
        return ganador_mano;
        
    end JugarMano;

    NUMERO_DE_MANOS: constant := 2;
    ganador: RESULTADO;
begin
    ganador := JugarPartida( PiedraPapelTijera'Access, NUMERO_DE_MANOS );
    
    -- Se proclama al ganador de la Partida. UI
    proclamar_ganador_partida(ganador);
        
end JugarPiedraPapelTijera;