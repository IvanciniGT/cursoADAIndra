with Ada.Strings.Unbounded; 
use Ada.Strings.Unbounded;

package Jugadores is

    type Jugador is record
        Nombre:             Unbounded_String;
        Email:              Unbounded_String;
        PartidasJugadas:    Integer;
        PartidasGanadas:    Integer;
    end record;
    
    function NuevoJugador return String; -- < Cambio: El nuevo jugador lo guardo en un Vector
    
    procedure ImprimirJugador(id: String);
    
    procedure ModificarEmailJugador(id: String); -- Cambiar el email

    procedure AnotarNuevaPartida(id: String);
    
    procedure AnotarPartidaGanada(id: String);
    
    ---
    
    function EliminarJugador(id: String) return Boolean;
    
    function RecuperarJugador(nombre: String; jugadorEncontrado: out Jugador ) return Boolean;
    
    procedure ListarJugadores;

    ---
    
    function cargarJugadores return Boolean ;

end Jugadores;