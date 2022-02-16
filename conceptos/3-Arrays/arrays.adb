-- Arrays: Tienen un tamaño fijo, predeterminado cuando creo el ARRAY
-- Un array es: Conjunto de datos del mismo tipo, donde los datos se guardan secuencialmente (ordenados)
             -- Puedo referirme a cada dato de ese conjunto , a través de su orden (posición)
-- Array:   1, 2, 3, 4, 5
-- Array CENAS:   CARNE, PESCADO, ENSALADA, SOPA

-- Darme el SEGUNDO elemento de array CENAS: PESCADO
with Ada.Integer_Text_IO;               use Ada.Integer_Text_IO;
with Ada.Text_IO;                       use Ada.Text_IO;

procedure Arrays is
                                -- Tiene que ver con el Tamaño
                                -- Los índices con los que puedo referirme a los elementos que voy a tener en el array
                                -- range : Rango de indices que puedo usar en ese array
    horas_entrenamiento: array (5..14) of Integer;
begin                   -- 5    6   7   8   9   10  11  12  13  14      < Indices
    horas_entrenamiento := (7   ,1  ,2  ,7  ,3  ,0  ,9  ,1  ,6  ,3); -- < Horas
    
    -- De horas_entrenamiento quiero el elemento de la casilla 5: 7
    Put( horas_entrenamiento(5) );
    -- De horas_entrenamiento quiero el elemento de la casilla 12: 1
    Put( horas_entrenamiento(12) );
    -- De horas_entrenamiento quiero el elemento de la casilla 8: 7
    Put( horas_entrenamiento(8) );
    
    -- Si yo quisiera sacar todos?
    Put_Line("Horas de entrenamiento:");
    
    for numero of horas_entrenamiento loop  
        Put(numero);                         -- Voy hora a hora
    end loop;

    
    horas_entrenamiento(8):= 24;

    Put_Line("Otra forma:");

--    for indice in 5..14 loop
--    horas_entrenamiento'range  =  5..14
    for indice in horas_entrenamiento'range loop
        Put(horas_entrenamiento(indice));   -- Voy indice a indice 
    end loop;

end Arrays;