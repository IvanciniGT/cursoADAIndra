-- Teniendo en cuenta que quizás algún día nos interese aumentar su funcionalidad

procedure PiedraPapelTijera is
    
    type RESULTADO_MANO in (ORDENADOR, JUGADOR, EMPATE);
    
    function JugarMano() return RESULTADO_MANO is
    begin
        -- El ordenador piensa en Piedra, Papel, Tijera
        -- Y pregunta al jugador por su opción
        -- Se determina un ganador de la mano
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