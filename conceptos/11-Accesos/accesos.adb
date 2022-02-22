with Ada.Text_IO;           use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure Accesos is
    
    type Persona is record
        Nombre: Unbounded_String;
        Email:  Unbounded_String;
        Edad:   Integer;
    end record;
    
    type AccesoPersonaEstatico is access all Persona;   -- Puntero que va a apuntar a objetos estáticos... preresevados y creados
    type AccesoPersonaDinamico is access Persona;       -- Puntero que va a apuntar a objetos dinamicos... su reserva de memoria y creación (del objeto) se hace a posteriori
    accesoCarlos: AccesoPersonaDinamico;

    ivan: aliased Persona;                              -- Permite obtener un puntero (acceso) al objeto
    accesoIvan: AccesoPersonaEstatico;

begin
    ivan    := ( Nombre => To_Unbounded_String("Ivan"),   
                 Email => To_Unbounded_String("ivan.osuna.ayuste@gmail.com")  , 
                 Edad=> 43 );
                 
    Put_Line(To_String(ivan.email));

    accesoIvan := ivan'Access;                          -- Obtiene el puntero (el acceso) a un objeto estático
    accesoCarlos:= new Persona'( Nombre => To_Unbounded_String("Carlos"),   
                 Email => To_Unbounded_String("carlos@gmail.com")  , 
                 Edad=> 43 );
                -- new TIPO' < Permite definir un objeto dinámicamente y obtener un puntero a él
    Put_Line(To_String(accesoIvan.email));
    Put_Line(To_String(accesoCarlos.email));    -- Cuando trabajamos con punteros a records, los usamos como la variable 
                 
end Accesos;