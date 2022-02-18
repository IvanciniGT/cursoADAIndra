with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded;     use Ada.Strings.Unbounded;
with Ada.Containers.Vectors;

package body Jugadores is

    package VectorJugadores is new Ada.Containers.Vectors
    (
        Index_Type      => Positive,  -- Empieza en 1
        Element_Type    => Jugador
    );
    use VectorJugadores;
    JUGADORES: Vector;

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
        player: Jugador;
    begin
        Put_Line("Alta de nuevo jugador:");

        nombre := leerDato("Dime tu nombre:");
        email  := leerDato("Dime tu email:");

        Put_Line("Muchas gracias por la información");

        player:=( Nombre             => nombre ,
                 Email              => email ,
                 PartidasJugadas    => 0 ,
                 PartidasGanadas    => 0 ): 

        JUGADORES.append(player);
        return player;
        
    end NuevoJugador;
    
    procedure ImprimirJugador(player: Jugador)  is
    begin
        Put_Line("Datos del jugador: " & To_String(player.Nombre) );
        Put_Line("  Email:           " & To_String(player.email) );
        Put_Line("  Estadísticas:   " & player.PartidasGanadas'Image & " /"
                                       & player.PartidasJugadas'Image );
    end ImprimirJugador;

    procedure ModificarEmailJugador(player: in out Jugador) is
        email: Unbounded_String;
    begin
        email  := leerDato("Dime tu nuevo email:");
        player.Email := email;
        Put_Line("Muchas gracias por la información");
    end ModificarEmailJugador;

    procedure AnotarNuevaPartida(player: in out Jugador) is
    begin
        player.PartidasJugadas := player.PartidasJugadas + 1;
    end AnotarNuevaPartida;
    
    procedure AnotarPartidaGanada(player: in out Jugador) is
    begin
        player.PartidasGanadas := player.PartidasGanadas + 1;
    end AnotarPartidaGanada;

    function EliminarJugador(player: Jugador) return Boolean is
    begin
        
        
    end EliminarJugador;

    function RecuperarJugador(nombre: String; jugadorEncontrado: out Jugador ) return Boolean is
        nombreJugador: Unbounded_String := To_Unbounded_String(nombre);
    begin
        for player of JUGADORES loop
            if player.Nombre = nombreJugador then
                jugadorEncontrado := player;
                return True;
            end if;
        end loop;
        return False;
    end;

    procedure ListarJugadores is
    begin
        for player of JUGADORES loop
            ImprimirJugador( player );
        end loop;
    end ListarJugadores;

end Jugadores;