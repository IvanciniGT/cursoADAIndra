with Jugadores; use Jugadores; 
with Ada.Text_IO; use Ada.Text_IO; 

procedure JugadoresTest is
    resultado: Boolean;
begin
    resultado:= cargarJugadores;
    ListarJugadores;
    
    declare
        id: String := NuevoJugador;
    begin
        --resultado:= RecuperarJugador("ivan",player);
        ImprimirJugador(id);
        AnotarNuevaPartida(id);
        ModificarEmailJugador(id);
        AnotarNuevaPartida(id);
        AnotarPartidaGanada(id);
        ImprimirJugador(id);
    end;
    Put_Line("Lo que queda en cache");
    ListarJugadores;
    
    
end JugadoresTest;