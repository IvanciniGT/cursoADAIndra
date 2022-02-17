-- Teniendo en cuenta que quizás algún día nos interese aumentar su funcionalidad
with Ada.Integer_Text_IO;  use Ada.Integer_Text_IO;
with Ada.Text_IO;  use Ada.Text_IO;

procedure PiedraPapelTijera is
    
    type RESULTADO is (ORDENADOR, JUGADOR, EMPATE);
    type OPCION is (PIEDRA, PAPEL, TIJERA);

    function JugarPartida(numero_manos_necesarias_para_ganar: Integer) return RESULTADO is
        ganador_mano: RESULTADO;
        --- Vamos acumulando en esta variable los resultados de cada mano
        ---    ORDENADOR        |   JUGADOR     |   EMPATE
        ---     0               |   0           |   0           << VALOR INICIAL
        acumulado_manos_ganadas: array (RESULTADO) of Integer := (0,0,0);
    begin
        -- Mientras no haya ganado nadie (Llegar a 2... o el numero de partidas que se 
        -- haya definido como requerido), jugamos manos
        while acumulado_manos_ganadas(ORDENADOR) < numero_manos_necesarias_para_ganar and then
              acumulado_manos_ganadas(JUGADOR)   < numero_manos_necesarias_para_ganar loop 
            ganador_mano := JugarMano();
            -- Se acumula al total de manos juagadas el resultado de la mano actual
            acumulado_manos_ganadas(ganador_mano) := acumulado_manos_ganadas(ganador_mano) + 1 ;
        end loop;
        
        -- Se proclama al ganador de la Partida. UI
        proclamar_ganador_partida(ganador_mano);
        
        -- El ganador de la partida es el ganador de la última mano... siempre.
        return ganador_mano;
    end JugarPartida;
    
    
    function JugarMano() return RESULTADO is
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
        proclamar_ganador_mano(ganador_mano);
        return ganador_mano;
        
    end JugarMano;

    -- ----------------------------------------------------------------------------
    --   UI: Mostrar el ganador de la partida por consola
    -- ----------------------------------------------------------------------------
    procedure proclamar_ganador_partida(ganador: RESULTADO) is
    begin
        if ganador_mano then
            Put_Line("He ganado YO... paquete !!!");
        else
            Put_Line("Has ganado TU... suerte del principiante.... :<");
        end if;   
    end proclamar_ganador_partida;
    
    -- ----------------------------------------------------------------------------
    --   UI: Mostrar el ganador de la mano por consola
    -- ----------------------------------------------------------------------------
    procedure proclamar_ganador_mano(ganador: RESULTADO) is
    begin
        if ganador_mano then
            Put_Line("En esta te he pulido.... !!!");
        else
            Put_Line("Maldito.. que me has ganado esta ronda");
        end if;   
    end proclamar_ganador_mano;

    -- ----------------------------------------------------------------------------
    --   UI: Obtener opción del jugador (PIEDRA, PAPEL, TIJERA)
    -- ----------------------------------------------------------------------------
    function obtener_opcion_jugador() return OPCION is
        mano_jugador_formato_numero:    Integer;
        conversion_numero_opcion:       array (0..2) of OPCION      := (PIEDRA, PAPEL, TIJERA);
    begin
        Put_Line("Que sacas?  0: Piedra | 1: Papel | 2: Tijera");
        Get(mano_jugador_formato_numero);
        return conversion_numero_opcion( mano_jugador_formato_numero );
    end obtener_opcion_jugador;


    NUMERO_DE_MANOS: constant := 2;
begin
    JugarPartida( NUMERO_DE_MANOS );
end PiedraPapelTijera;