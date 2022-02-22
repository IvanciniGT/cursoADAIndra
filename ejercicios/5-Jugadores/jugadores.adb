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
    JUGADORES: Vector;  -- cache
    nombre_fichero_jugadores: constant String := "jugadores.db";

    function cargarJugadorEnCache( nombre: Unbounded_String; 
                                    email: Unbounded_String; 
                                    jugadas: Integer := 0; 
                                    ganadas: Integer := 0) return Jugador is
        player: Jugador;
    begin
        player:=( Nombre             => nombre ,
                  Email              => email ,
                  PartidasJugadas    => jugadas ,
                  PartidasGanadas    => ganadas);

        JUGADORES.append(player);
        return player; -- Esto me puede estar dando una copia
    end cargarJugadorEnCache;


    -- funcion para cargar datos del fichero
    function cargarJugadores return Boolean is
        miFichero: File_type;
        player: Jugador;
    begin
        -- Crear u nuevo fichero o abrir uno existente
        Open(
            File    =>  miFichero, -- descriptor del fichero.... Cómo me voy a referir desde mi programa al fichero
            Mode    =>  In_file,  -- Un fichero para In (entrada) para leer de él
            Name    =>  nombre_fichero_jugadores -- Nombre del fichero en mi disco duro.. en mis carpetas
        );
        -- Mientras NO esté en el FIN DEL FICHERO
        while not End_of_file(miFichero) loop
            player:= cargarJugadorEnCache (To_Unbounded_String(Get_line(miFichero)) ,
                                  To_Unbounded_String(Get_line(miFichero)) ,
                                  Integer'Value(Get_line(miFichero)) ,
                                  Integer'Value(Get_line(miFichero)) );
        end loop;
    
        Close( miFichero );
        return True;
    end cargarJugadores;    
    

    procedure guardarJugadorEnFichero(miFichero: File_type; player: Jugador ) is
    begin
        Put_Line( miFichero, To_String(player.nombre) );
        Put_Line( miFichero, To_String(player.email ));
        Put_Line( miFichero, player.PartidasJugadas'Image);
        Put_Line( miFichero, player.PartidasGanadas'Image);
    end guardarJugadorEnFichero;


    function addJugadorEnFichero(player:Jugador) return Boolean is
        miFichero: File_type;
    begin
        -- Tengo que crear un fichero? NO... Abrir el fichero para añadirle cosas
        Open(
            File    =>  miFichero, -- descriptor del fichero.... Cómo me voy a referir desde mi programa al fichero
            Mode    =>  Append_file,  -- Añade datos al final del fichero
            Name    =>  nombre_fichero_jugadores -- Nombre del fichero en mi disco duro.. en mis carpetas
        );
        
        guardarJugadorEnFichero( miFichero, player );
        
        Close( miFichero );
        return True;
    end addJugadorEnFichero;

    function reescribirFicheroJugadores return Boolean is
        miFichero: File_type;
    begin
        -- Crear un nuevo fichero o sobreescribe uno existente
        Create(
            File    =>  miFichero, -- descriptor del fichero.... Cómo me voy a referir desde mi programa al fichero
            Mode    =>  Out_file,  -- Un fichero para OUT (salida) para escribir en él
            Name    =>  nombre_fichero_jugadores -- Nombre del fichero en mi disco duro.. en mis carpetas
        );
        -- Guardo cada jugador en el fichero
        for player of JUGADORES loop
            guardarJugadorEnFichero( miFichero, player );
        end loop;
        
        Close( miFichero );
        return True;
    end reescribirFicheroJugadores;
    

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
        resultado: Boolean;
    begin
        Put_Line("Alta de nuevo jugador:");

        nombre := leerDato("Dime tu nombre:");
        email  := leerDato("Dime tu email:");

        Put_Line("Muchas gracias por la información");

        player:= cargarJugadorEnCache( Nombre             => nombre ,
                                       Email              => email);

        resultado:= addJugadorEnFichero(player);
        return player; -- Esto me puede estar dando una copia de la copia
        
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
        resultado: Boolean;
    begin
        email  := leerDato("Dime tu nuevo email:");
        player.Email := email;
        Put_Line("Muchas gracias por la información");
        resultado:= reescribirFicheroJugadores;
    end ModificarEmailJugador;

    procedure AnotarNuevaPartida(player: in out Jugador) is
        resultado: Boolean;
    begin
        player.PartidasJugadas := player.PartidasJugadas + 1;
        resultado:= reescribirFicheroJugadores;
    end AnotarNuevaPartida;
    
    procedure AnotarPartidaGanada(player: in out Jugador) is
        resultado: Boolean;
    begin
        player.PartidasGanadas := player.PartidasGanadas + 1;
        resultado:= reescribirFicheroJugadores;
    end AnotarPartidaGanada;

    function EliminarJugador(player: Jugador) return Boolean is
        resultado: Boolean;
        encontrado: Jugador;
        posicion: Cursor;
    begin
        resultado:= RecuperarJugador(To_String(player.nombre), encontrado);
        if resultado then
            JUGADORES.Delete( JUGADORES.Find_index(player) );
            resultado:= reescribirFicheroJugadores;
        end if;
        return resultado;
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