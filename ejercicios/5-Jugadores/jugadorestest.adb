with Jugadores; use Jugadores; 

procedure JugadoresTest is
    player: Jugador;
    resultado: Boolean;
begin
    resultado:= cargarJugadores;
    ListarJugadores;
    
    player := NuevoJugador;
    ImprimirJugador(player);
    AnotarNuevaPartida(player);
    ModificarEmailJugador(player);
    AnotarNuevaPartida(player);
    AnotarPartidaGanada(player);
    ImprimirJugador(player);
    ListarJugadores;
    
    
end JugadoresTest;