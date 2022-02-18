with Jugadores; use Jugadores; 

procedure JugadoresTest is
    player: Jugador;
begin
    player := NuevoJugador;
    ImprimirJugador(player);
    AnotarNuevaPartida(player);
    ModificarEmailJugador(player);
    AnotarNuevaPartida(player);
    AnotarPartidaGanada(player);
    ImprimirJugador(player);

end JugadoresTest;