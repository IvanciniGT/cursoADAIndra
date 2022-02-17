with Ada.Strings.Unbounded; 
use Ada.Strings.Unbounded;

package Jugadores is

    type Jugador is record
        Nombre:             Unbounded_String;
        Email:              Unbounded_String;
        PartidasJugadas:    Integer;
        PartidasGanadas:    Integer;
    end record;
    
    function NuevoJugador return Jugador;
    
    procedure ImprimirJugador(player: Jugador);

end Jugadores;