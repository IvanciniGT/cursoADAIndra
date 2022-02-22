with Jugadores; use Jugadores; 
with Ada.Text_IO; use Ada.Text_IO; 

procedure JugadoresTest is
    player: Jugador;
    resultado: Boolean;
begin
    resultado:= cargarJugadores;
    ListarJugadores;
    
    player := NuevoJugador;
    resultado:= RecuperarJugador("ivan",player);
    ImprimirJugador(player);
    AnotarNuevaPartida(player);
    ModificarEmailJugador(player);
    AnotarNuevaPartida(player);
    AnotarPartidaGanada(player);
    ImprimirJugador(player);
    Put_Line("Lo que queda en cache");
    ListarJugadores;
    
    
end JugadoresTest;