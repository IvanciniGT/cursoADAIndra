with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package body Jugadores is

    function leerDato (mensaje: String) return Unbounded_String is
    begin
        Put_Line(mensaje);
        declare
            leido : constant String := Get_Line;
        begin
            return To_Unbounded_String(leido);
        end;
    end leerDato;

    function NuevoJugador return Jugador is
        nombre: Unbounded_String;
        email:  Unbounded_String;
    begin
        Put_Line("Alta de nuevo jugador:");

        nombre := leerDato("Dime tu nombre:");
        email  := leerDato("Dime tu email:");

        Put_Line("Muchas gracias por la información");

        return ( Nombre             => nombre ,
                 Email              => email ,
                 PartidasJugadas    => 0 ,
                 PartidasGanadas    => 0 );
    end NuevoJugador;
    
    procedure ImprimirJugador(player: Jugador)  is
    begin
        Put_Line("Datos del jugador: " & To_String(player.Nombre) );
        Put_Line("  Email:           " & To_String(player.email) );
        Put_Line("  Estadísticas:   " & player.PartidasGanadas'Image & " /"
                                       & player.PartidasJugadas'Image );
    end ImprimirJugador;

end Jugadores;