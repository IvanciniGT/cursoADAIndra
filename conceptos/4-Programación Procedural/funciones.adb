-- Programación procedural
--  Estructurar mejor mi código
--  Capacidad de definir bloques de código reutilizables:
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
    
    
    function Mayor (Numero1: Integer; Numero2: Integer) return Integer is
        EL_MAYOR: Integer;
    begin
        -- Forma muy formal y Muy válida
        -- if Numero1 > Numero2 then
        --    EL_MAYOR := Numero1;
        -- else
        --     EL_MAYOR := Numero2;
        -- end if;
        -- return El_MAYOR;
        
        -- Forma sencilla
        --if Numero1 > Numero2 then
        --    return Numero1;
        --else
        --    return Numero2;
        --end if;
        
        -- Forma para que no me duelan los dedo mucho
        -- if Numero1 > Numero2 then
        --    return Numero1;
        -- end if;
        -- return Numero2;
        
        -- Forma guay!
        return if Numero1 > Numero2 then Numero1 else Numero2;
    end;
    
    
    function MayorDeTres (Numero1: Integer; Numero2: Integer; Numero3: Integer) return Integer is
    begin
        return Mayor( Mayor (Numero1, Numero2), Numero3);
    end MayorDeTres;


begin
    
    Put_line("Voy a calcular el doble de unos números:");
    
    Put_Line("Doble del  7 = " &  Integer'Image(  7 * 2 ) );
    Put_Line("Doble del 14 = " & Integer'Image( 14 * 2 ) );
    Put_Line("Doble del 31 = " & Integer'Image( 31 * 2 ) );

    Put_Line("Doble del  7 = " &  Integer'Image( Doblar(  7 ) ) );
    Put_Line("Doble del 14 = " & Integer'Image( Doblar( 14 ) ) );
    Put_Line("Doble del 31 = " & Integer'Image( Doblar( 31 ) ) );
    
    Put_Line("El mayor entre el 10 y el 20 es: " & Integer'Image( Mayor( 10, 20 ) ) );
    -- La función debe devolver el mayor de los 2 número que 
    -- recibe como argumento
    -- Si son iguales, cualquiera de ellos
    Put_Line("El mayor entre el 10, el 30 y el 20 es: " & Integer'Image( MayorDeTres( 10, 30, 20 ) ) );
    
end Funciones;