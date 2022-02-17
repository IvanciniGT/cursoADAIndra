package body Partida is
    
    
    function JugarPartida(JugarMano: Juego ; numero_manos_necesarias_para_ganar: Integer) return RESULTADO is
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
        
        -- El ganador de la partida es el ganador de la última mano... siempre.
        return ganador_mano;
    end JugarPartida;
    
end Partida;