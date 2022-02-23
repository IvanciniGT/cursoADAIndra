with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded;     use Ada.Strings.Unbounded;
with Ada.Strings.Hash;
with Ada.Containers.Indefinite_Hashed_Maps;

package body Jugadores is

--    package VectorJugadores is new Ada.Containers.Vectors
--    (
--        Index_Type      => Positive,  -- Empieza en 1
--        Element_Type    => Jugador
--    );
    
--    use VectorJugadores;
--    DATOS_JUGADORES:  Vector;  -- cache


    package MapaJugadores is new Ada.Containers.Indefinite_Hashed_Maps
    (
        Key_Type        => String,
        Element_Type    => Jugador,
        Hash            => Ada.Strings.Hash,
        Equivalent_Keys => "=" 
    );
    use MapaJugadores;
    
--    procedure Include (Container : in out Map;
--                      Key       : in     Key_Type;
--                      New_Item  : in     Element_Type);
--   procedure Replace (Container : in out Map;
--                      Key       : in     Key_Type;
--                      New_Item  : in     Element_Type);
--   procedure Delete (Container : in out Map;
--                     Key       : in     Key_Type);
--   function Contains (Container : Map;
--                      Key       : Key_Type) return Boolean;
--    function Element (Container : Map;
--                     Key       : Key_Type)

    DATOS_JUGADORES:  Map;  -- cache

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

        DATOS_JUGADORES.Include(To_String(nombre), player); -- se guarda el original... o una copia
                                        -- yo no tengo npi
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
        for cursor in DATOS_JUGADORES.iterate loop
            guardarJugadorEnFichero( miFichero, Element(cursor) );
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

    function NuevoJugador return String is
        nombre:  Unbounded_String;
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
        return To_String(nombre); -- Esto me puede estar dando una copia de la copia
    end NuevoJugador;
    
    procedure ImprimirJugador(id: String)  is
        player: Jugador;
    begin
        player:=DATOS_JUGADORES.Element(id);
        Put_Line("Datos del jugador: " & To_String(player.Nombre) );
        Put_Line("  Email:           " & To_String(player.email) );
        Put_Line("  Estadísticas:   " & player.PartidasGanadas'Image & " /"
                                       & player.PartidasJugadas'Image );
    end ImprimirJugador;

    procedure ModificarEmailJugador(id: String) is
        email: Unbounded_String;
        resultado: Boolean;
    begin
        email  := leerDato("Dime tu nuevo email:");
        DATOS_JUGADORES(id).Email := email;
        Put_Line("Muchas gracias por la información");
        resultado:= reescribirFicheroJugadores;
    end ModificarEmailJugador;

    procedure AnotarNuevaPartida(id: String) is
        resultado: Boolean;
    begin
        DATOS_JUGADORES(id).PartidasJugadas := DATOS_JUGADORES(id).PartidasJugadas + 1;
        resultado:= reescribirFicheroJugadores;
    end AnotarNuevaPartida;
    
    procedure AnotarPartidaGanada(id: String) is
        resultado: Boolean;
    begin
        DATOS_JUGADORES(id).PartidasGanadas := DATOS_JUGADORES(id).PartidasGanadas + 1;
        resultado:= reescribirFicheroJugadores;
    end AnotarPartidaGanada;

    function EliminarJugador(id: String) return Boolean is
        resultado: Boolean;
    begin
        resultado:= DATOS_JUGADORES.Contains( id );
        if resultado then
            DATOS_JUGADORES.Delete( id );
            resultado:= reescribirFicheroJugadores;
        end if;
        return resultado;
    end EliminarJugador;

    function RecuperarJugador(nombre: String; jugadorEncontrado: out Jugador ) return Boolean is
        resultado: Boolean;
    begin
        resultado:= DATOS_JUGADORES.Contains( nombre );
        if resultado then
            jugadorEncontrado:=DATOS_JUGADORES( nombre );
        end if;
        return resultado;
    end;

    procedure ListarJugadores is
    begin
        for cursor in DATOS_JUGADORES.iterate loop
            ImprimirJugador( Key(cursor) );
        end loop;
    end ListarJugadores;

end Jugadores;