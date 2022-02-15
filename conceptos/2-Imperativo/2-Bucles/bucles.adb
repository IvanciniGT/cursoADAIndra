with Ada.Text_IO; -- Compilador, que sepas que voy a usar la librería Ada.Text_IO, la necesito.
use Ada.Text_IO;  -- Compilador, quiero poder referirme a las funciones de esa librería, 
                  -- sin necesidad de escribir todo el rato el nombre de la librería

with Ada.Integer_Text_IO; -- Compilador, que sepas que voy a usar la librería Ada.Integer_Text_IO, la necesito.
use Ada.Integer_Text_IO;  -- Compilador, quiero poder referirme a las funciones de esa librería, 
                          -- sin necesidad de escribir todo el rato el nombre de la librería

procedure Bucles is
    NUMERO: Integer;
begin
    
    Put_Line( "De qué número partimos?" ); 
    Get( NUMERO );          -- Definida en Ada.Integer_Text_IO   

    -- Primer bucle en ADA
    -- 
    while NUMERO > 5 loop          -- mientras
        Put_Line( "TAREA 1" );
        NUMERO := NUMERO - 1;
    end loop; 

end Bucles;