-- Programación procedural
-- Capacidad de definir bloques de código reutilizables:
-- - Procedimientos: Bloque de código reutilizable, que:
        -- - Cuando lo llamo (solicito su ejecución) puedo sumistrar una serie de argumentos
        -- - El procedimiento ejecuta unas tareas y acaba.
-- - Funciones: Bloque de código reutilizable, que:
        -- - Cuando lo llamo (solicito su ejecución) puedo sumistrar una serie de argumentos
        -- - LA función ejecuta unas tareas y acaba DEVOLVIENDO UN RESULTADO
with Ada.Text_IO;           use Ada.Text_IO;
with Ada.Integer_Text_IO;   use Ada.Integer_Text_IO;

procedure Funciones is
    -- tipos
    -- variables
    -- funciones y procedimientos
                    -- defino los ARGUMENTOS, los datos que debo sumistrar cuando llame a la funcion
                    --   |                  El tipo de dato que devuelve la función. Una función solo devuelve un valor
                    --   V                     V
    function Doblar (Numero: Integer) return Integer is
    begin
        return Numero * 2 ;
    end Doblar;
begin
    
    Put_line("Voy a calcular el doble de unos números:");
    
    Put_Line("Doble del  7 = " &  Integer'Image(  7 * 2 ) );
    Put_Line("Doble del 14 = " & Integer'Image( 14 * 2 ) );
    Put_Line("Doble del 31 = " & Integer'Image( 31 * 2 ) );

    Put_Line("Doble del  7 = " &  Integer'Image( Doblar(  7 ) ) );
    Put_Line("Doble del 14 = " & Integer'Image( Doblar( 14 ) ) );
    Put_Line("Doble del 31 = " & Integer'Image( Doblar( 31 ) ) );
    
end Funciones;