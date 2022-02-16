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
    -- Permite ejecutar un conjunto de ordenes muchas veces... o ninguna... tantas como sea necesario... 
    -- mientras se cumpla la condición que establecemos
    while NUMERO > 5 loop          -- mientras se cumple la CONDICION (regla lógica) se SIGUE ejecutando las ordenes
        -- ordenes
        Put_Line( "TAREA 1" );
        NUMERO := NUMERO - 1;
    end loop; 
    
    -- For
    -- Un bucle for permite ejecutar un conjunto de órdenes para cada valor de una coleccion de valores
    for VALOR in  1..10  loop -- Para cada "valor" en ese conjunto de valores (los numeros del 1 al 10)
                                -- Valor es una variable que va a tomar cada uno de los valores del conjunto original
        --ordenes
        Put_Line("Estoy en el bucle for. La variable VALOR contiene: " & Integer'Image(VALOR * 5)) ;
                                                                        -- convirtiendo VALOR de numero a texto
                                                                        -- para poder juntarlo con el otro texto
                                                                        -- Y que ada lo muestre por pantalla
            -- Operador & : CONCATENAR/UNIR TEXTOS para formar un único texto
    end loop;

    -- Otro tipo de bucle: Basado también en condiciones

    loop -- until
        Put_Line("Voy por el " & Integer'Image(NUMERO) );
        NUMERO := NUMERO + 1;
        exit when NUMERO > 10; -- Condicion de salida. Si se cumple, se PARA de ejecutar el bucle
    end loop;
        

end Bucles;