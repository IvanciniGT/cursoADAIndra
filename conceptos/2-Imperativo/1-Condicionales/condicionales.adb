with Ada.Text_IO; -- Compilador, que sepas que voy a usar la librería Ada.Text_IO, la necesito.
use Ada.Text_IO;  -- Compilador, quiero poder referirme a las funciones de esa librería, 
                  -- sin necesidad de escribir todo el rato el nombre de la librería

with Ada.Integer_Text_IO; -- Compilador, que sepas que voy a usar la librería Ada.Integer_Text_IO, la necesito.
use Ada.Integer_Text_IO;  -- Compilador, quiero poder referirme a las funciones de esa librería, 
                          -- sin necesidad de escribir todo el rato el nombre de la librería

procedure Condicionales is
    NUMERO: Integer := 18;
begin
    
    Put_Line( "Partimos del número:" ); -- Función que se encuentra dentro de la librería Ada.Text_IO
    -- Put_Line( Integer'Image(NUMERO) );
    -- Integer'Image(NUMERO)  : Obtener una representación como TEXTO de nuestro NUMERO ENTERO
    
    Put( NUMERO );              -- Función que se encuentra dentro de la librería Ada.Integer_Text_IO
    
    -- 2 reglas que se procesan de forma INDEPENDIENTE una respecto de la otra... 
    -- Cada una va en su bloque IF
    
    if NUMERO > 5 then          -- Es mi número es mayor que el 5? 
        Put_Line( "TAREA 1" );
    end if; -- Ya he acabado de hablar de esta regla lógica
    
    if NUMERO > 0 then       -- Es mi número es mayor que el 0?
        Put_Line( "TAREA 2" );
    end if; -- Ya he acabado de hablar de esta regla lógica
    
    -- 2 reglas lógicas que no son independientes
    if NUMERO > 15 then          -- Es mi número es mayor que el 15? 
        Put_Line( "TAREA 3" );
    -- Pero si no lo es (mayor que 5)
    elsif NUMERO > 10 then       -- Si mi número no es mayor que 15, pero es mayor que el 10?
                                --          els                 --
        Put_Line( "TAREA 4" );
    end if;
    
    -- Reglas lógicas o condiciones
    -- Operadores de comparación: > < >= <= = /=     in RANGO: VALOR INICIAL..VALOR FINAL
    if NUMERO in 1 .. 19 then
        Put_Line( "Tengo un número entre el 1 y el 19" );
    else
        Put_Line( "Tengo un número que no está entre el 1 y el 19" );
    end if;
    -- negar una regla not
    -- Combinar reglas lógicas o condiciones
    -- OPERADORES LOGICOS BASICOS: and or xor
    -- OPERADORES EN CORTOCIRCUITO: and then         or then
    --                              and then: Si la primera condición NO se cumple,
    --                                        la segunda ni se evalua
    --                              or then: Si la primera condición SI se cumple,
    --                                        la segunda NO se evalua
    -- xor O EXCLUSIVO. Si se cumple 1 o la otra pero no las 2.
    -- numero > 17 and numero < 23
    --     condicion1 condicion2.    AND    OR      XOR
    --       llueve    truena
    --        SI.        SI          SI     SI      NO
    --        SI.        NO          NO     SI      SI
    --        NO.        SI          NO     SI      SI
    --        NO.        NO          NO     NO      NO
    -- Si llueve o si truena agarra el paraguas, pero si llueve y truena entonces no
end Condicionales;