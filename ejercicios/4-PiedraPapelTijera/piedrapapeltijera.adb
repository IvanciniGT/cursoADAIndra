-- Teniendo en cuenta que quizás algún día nos interese aumentar su funcionalidad
with Ada.Integer_Text_IO;  use Ada.Integer_Text_IO;
with Ada.Text_IO;  use Ada.Text_IO;


procedure PiedraPapelTijera is
    
    type RESULTADO_MANO is (ORDENADOR, JUGADOR, EMPATE);
    
    function JugarMano() return RESULTADO_MANO is
        type OPCION is (PIEDRA, PAPEL, TIJERA);
        mano_ordenador:                 OPCION;
        mano_jugador_formato_numero:    Integer;
        mano_jugador:                   OPCION;
        conversion_numero_opcion:       array (0..2) of OPCION      := (PIEDRA, PAPEL, TIJERA);
        ganador:                        RESULTADO_MANO;
        reglas:                         array (OPCION, OPCION) of RESULTADO_MANO;
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
        mano_ordenador := MANO;
        -- Y pregunta al jugador por su opción
        Put_Line("Que sacas?  0: Piedra | 1: Papel | 2: Tijera");
        Get(mano_jugador_formato_numero);
        mano_jugador := conversion_numero_opcion( mano_jugador_formato_numero );
        -- Solución creativa
        ganador := reglas (mano_jugador, mano_ordenador);

        -- SOLUCION CLASICA VVVVVV. Perfecta... para gastar las teclas...
        -- y volverme loco cuando quiera cambiarlo... pero perfecta
        -- Se determina un ganador de la mano
        -- if mano_ordenador = PIEDRA and mano_jugador = PAPEL then
        --    ganador = JUGADOR;
        -- elsif mano_ordenador = PIEDRA and mano_jugador = TIJERA then
        --    ganador = ORDENADOR;
        -- elsif mano_ordenador = mano_jugador then
        --    ganador = EMPATE;
    end JugarMano;

    ganador_mano: RESULTADO_MANO;
    acumulado_manos_ganadas: array (RESULTADO_MANO) of Integer := (0,0,0);
    ---    ORDENADOR        |   JUGADOR     |   EMPATE
    ---------------------------------------------------
    ---     Integer         |   Integer     |   Integer
    ---     0               |   0           |   0           << VALOR INICIAL
    numero_manos_necesarias_para_ganar: constant:= 2;
begin
    -- Iniciar una Partida Completa (Al que gane 2)
    -- Mientras no haya ganado nadie
    while acumulado_manos_ganadas(ORDENADOR) < numero_manos_necesarias_para_ganar and then
          acumulado_manos_ganadas(JUGADOR)   < numero_manos_necesarias_para_ganar loop -- Mientras no haya ganado nadie                          <<<<< resultado_partida
    -- Jugar manos de esa partida .
        ganador_mano := JugarMano();
        -- Se acumula al total de manos juagadas el resultado
        acumulado_manos_ganadas(ganador_mano) := acumulado_manos_ganadas(ganador_mano) + 1 ;
    end loop;
    -- Se proclama al ganador de la Partida                             <<<<< resultado_partida
    if acumulado_manos_ganadas(ORDENADOR) = numero_manos_necesarias_para_ganar then
        Put_Line("He ganado YO... paquete !!!");
    else
        Put_Line("Has ganado TU... suerte del principiante.... :<");
    end if;
end PiedraPapelTijera;