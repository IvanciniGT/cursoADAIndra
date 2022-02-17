with Ada.Text_IO;                   use Ada.Text_IO;
with Ada.Strings.Fixed;             use Ada.Strings.Fixed;
with Ada.Strings.Unbounded;         use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;    use Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;       use Ada.Characters.Handling;

procedure Textos is
    nombre: String := "Ivan";    --- esto es un array de caracteres
                --    | 1 | 2 | 3 | 4 |
                --    | I | v | a | n |
                --    | R | u | t | h |
        -- Los arrays tienen 2 limitaciones:
            -- - Todos los datos han de ser del mismo tipo
            -- - Su tamaño está predefinido y no puede cambiarse a posteriori.
    super_nombre : Unbounded_String;
begin
    -- String    
    Put_Line( Character'Image( nombre(2) ) );

    nombre := "Ruth";    
    
    Put_Line( nombre(3)'Image );
    Put_Line( Integer'Image(nombre'Length) );

    for posicion in nombre'range loop
        Put_Line( nombre(posicion)'Image );
    end loop;
    
    Put_Line( Translate( nombre, Upper_Case_Map ) );
    Put_Line( Translate( nombre, Lower_Case_Map ) );
    
    -- ESTO DARIA ERROR. NO LO PUEDO HACER    nombre := "Nestor";    
    
    -- Unbounded_String
    super_nombre:= To_Unbounded_String("Ivan");
    Put_Line( To_String(super_nombre) );
    super_nombre:= To_Unbounded_String("Ruth");
    Put_Line( To_String(super_nombre) );
    super_nombre:= To_Unbounded_String("Nestor");
    Put_Line( To_String(super_nombre) );
    super_nombre:= To_Unbounded_String("Francisco Javier");
    Put_Line( To_String(super_nombre) );


    Put_Line( To_String( Translate( super_nombre, Upper_Case_Map ) ) );
    Put_Line( To_String( Translate( super_nombre, Lower_Case_Map ) ) );

end Textos;