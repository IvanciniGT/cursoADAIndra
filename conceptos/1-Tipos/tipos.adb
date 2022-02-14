-- Tipos de datos y variables
with Ada.Text_IO;

procedure Tipos is
    -- Aquí le decimos a la computadora:
        -- Que tipos de datos vamos a manejar
            -- Ada por defecto permite trabajar con:
                -- Integer -> Número enteros
                -- Float ->   Números decimales 
                -- Boolean -> bit (Si/No) (verdadero/Falso)
                -- String  -> textos
        -- Qué variables voy a usar (para que haga la reserva de memoria el SO)
        -- Otras cosas que use mi procedimiento
    
    -- definir mi tipo de datos, para saber que puedo cenar?
    --                      000      001    010      011   100
    type CENAS_POSIBLES is (POLLO, VACA, CERDO, PESCADO, ENSALADA); -- Cuantos bits opcupará esto en RAM? 3
    type EDAD is new Integer range 0..125000;
    
    -- variable: para saber qué voy a cenar esta noche?
    
    -- v Nombre de la variable      v Valor inicial/defecto (que podría cambiar después)
    CenaDeHoy: CENAS_POSIBLES:= CERDO;
    --          ^Tipo de datos
    EdadDeIvan: EDAD := 4300;
    --EdadDeIvan: Integer := 43; -- Al que haga esto le cortamos las uñas muy cortitas,
                                -- pero muy cortitas y le metemos las manos en un vaso 
                                -- lleno de agua con zumo de limón
    
begin
    -- Instrucciones: ordenes que doy a la computadora
    -- Asignamos valor a una variable (que haya definido previamente, en el bloque de arriba)
    CenaDeHoy:= ENSALADA;
    
    -- Quisiera mostrar por pantall lo que he decidido que voy a cenar hoy.
    -- Convierte a un texto, el valor de la variable CenaDeHoy, 
    --        para poder representarlo en pantalla.
    -- Todo typo de datos, tiene la función 'Image, que permite obtener una representación de un
    -- valor de ese tipo como texto
    Ada.Text_IO.Put_Line( CENAS_POSIBLES'Image(CenaDeHoy) );
    Ada.Text_IO.Put_Line( EDAD'Image(EdadDeIvan) );
    
end Tipos;