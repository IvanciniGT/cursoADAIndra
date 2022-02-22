package Partida is
    
    type RESULTADO is (ORDENADOR, JUGADOR, EMPATE);
    type Juego is access function return RESULTADO;

    function JugarPartida(JugarMano: Juego ; numero_manos_necesarias_para_ganar: Integer) return RESULTADO;
    
end Partida;