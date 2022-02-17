-- Quiero gurdar información en la RAM
--     que usamos? variables
-- En ocasiones no quiero guardar varios datos de forma independiente... sino ligados entre si.
--  Quiero guardar una colección de datos: 
--      array... Limitación IMPORTANTE: Todos los datos tienen que ser del mismo TIPO

-- programa: pidais un nombre y un email a un usuario

with Ada.Text_IO;           use Ada.Text_IO;
with Ada.Integer_Text_IO;   use Ada.Integer_Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
procedure Records is
    
    type Persona is record
        Nombre: Unbounded_String;
        Email:  Unbounded_String;
        Edad:   Integer;
    end record;

    ivan: Persona;
    ruth: Persona;
    nestor: Persona;
    
begin
    ivan    := ( Nombre => To_Unbounded_String("Ivan"),   
                 Email => To_Unbounded_String("ivan.osuna.ayuste@gmail.com")  , 
                 Edad=> 43 );
    ruth    := ( Email => To_Unbounded_String("ruth@gmail.com"),
                 Nombre => To_Unbounded_String("Ruth"),
                 Edad => 22 );
    nestor  := ( To_Unbounded_String("Nestor"), To_Unbounded_String("nestor@gmail.com"), 21);
    
    Put_Line( To_String( ivan.Nombre ) );
    Put_Line( To_String( ruth.Email ) );
    nestor.Edad := 22;
    Put( nestor.Edad );
    
end Records;