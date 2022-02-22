with Ada.Strings.Unbounded; 
use Ada.Strings.Unbounded;

package Jugadores is

    type DatosJugador is record
        Nombre:             Unbounded_String;
        Email:              Unbounded_String;
        PartidasJugadas:    Integer;
        PartidasGanadas:    Integer;
    end record;
    
    type Jugador is access all DatosJugador; -- all... Que me permita referenciar a datos estaticos y dinámicos
    
    function NuevoJugador return Jugador; -- < Cambio: El nuevo jugador lo guardo en un Vector
    
    procedure ImprimirJugador(player: Jugador);
    
    procedure ModificarEmailJugador(player: Jugador); -- Cambiar el email

    procedure AnotarNuevaPartida(player: Jugador);
    
    procedure AnotarPartidaGanada(player: Jugador);
    
    ---
    
    function EliminarJugador(player: Jugador) return Boolean;
    
    function RecuperarJugador(nombre: String; jugadorEncontrado: Jugador ) return Boolean;
    
    procedure ListarJugadores;

    ---
    
    function cargarJugadores return Boolean ;

end Jugadores;