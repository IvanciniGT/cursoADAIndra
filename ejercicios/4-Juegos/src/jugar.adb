-- Teniendo en cuenta que quizás algún día nos interese aumentar su funcionalidad
with Partida;                           use Partida;
with PiedraPapelTijera;                 use PiedraPapelTijera;
with Jugadores;                         use Jugadores;

with Ada.Text_IO;use Ada.Text_IO;

procedure Jugar is
    NUMERO_DE_MANOS: constant := 2;
    ganador:RESULTADO ;
    resultado:Boolean ;
begin
    resultado:= cargarJugadores;
    declare
        jugadorEncontrado: Jugadores.Jugador;
        encontrado: Boolean;
        nombre: String := get_Line;
    begin
        Put_Line("Cúal es su nombre?");
        encontrado:=RecuperarJugador(nombre,jugadorEncontrado);
        if(not encontrado) then
            Put_Line("Parece que no estás registrado. Te voy a pedir unos datos...");
            nombre:= NuevoJugador;
        end if;
        AnotarNuevaPartida(nombre);
        ganador := JugarPartida( JugarMano'Access, NUMERO_DE_MANOS );
        if ganador=JUGADOR then 
            AnotarPartidaGanada(nombre);
        end if;
        Put_Line("Estas son tus estadísticas hasta ahora:");
        ImprimirJugador(nombre);
    end;
end Jugar;