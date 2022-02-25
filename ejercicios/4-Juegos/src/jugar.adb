-- Teniendo en cuenta que quizás algún día nos interese aumentar su funcionalidad
with Partida;                           use Partida;
with PiedraPapelTijera;                 use PiedraPapelTijera;
with Jugadores;

with Ada.Text_IO;use Ada.Text_IO;

procedure Jugar is
    NUMERO_DE_MANOS: constant := 2;
    ganador:RESULTADO ;
    resultado:Boolean ;
    juegoActual: LibreriaJuego.Juego;
begin
    juegoActual:= VariedadesPPT.juegoPPTBasico;
    resultado:= Jugadores.cargarJugadores;
    Put_Line("Cúal es su nombre?");
    declare
        jugadorEncontrado: Jugadores.Jugador;
        encontrado: Boolean;
        nombre: String := get_Line;
    begin
        encontrado:=Jugadores.RecuperarJugador(nombre,jugadorEncontrado);
        if(not encontrado) then
            Put_Line("Parece que no estás registrado. Te voy a pedir unos datos...");
            nombre:= Jugadores.NuevoJugador;
        end if;
        Jugadores.AnotarNuevaPartida(nombre);
        ganador := JugarPartida( juegoActual, NUMERO_DE_MANOS );
        if ganador=JUGADOR then 
            Jugadores.AnotarPartidaGanada(nombre);
        end if;
        Put_Line("Estas son tus estadísticas hasta ahora:");
        Jugadores.ImprimirJugador(nombre);
    end;
end Jugar;