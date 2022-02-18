with Ada.Strings.Unbounded; 
use Ada.Strings.Unbounded;

package Jugadores is

    type Jugador is record
        Nombre:             Unbounded_String;
        Email:              Unbounded_String;
        PartidasJugadas:    Integer;
        PartidasGanadas:    Integer;
    end record;
    
    function NuevoJugador return Jugador; -- < Cambio: El nuevo jugador lo guardo en un Vector
    
    procedure ImprimirJugador(player: Jugador);
    
    procedure ModificarEmailJugador(player: in out Jugador); -- Cambiar el email

    procedure AnotarNuevaPartida(player: in out Jugador);
    
    procedure AnotarPartidaGanada(player:in out Jugador);
    
    ---
    
    function EliminarJugador(player: Jugador) return Boolean;
    
    function RecuperarJugador(nombre: String; jugadorEncontrado: out Jugador ) return Boolean;
    
    procedure ListarJugadores;

end Jugadores;