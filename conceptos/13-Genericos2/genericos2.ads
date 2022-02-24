generic 
    --type TIPO is private; -- Que puede ser TIPO? Cualquier cosa
    type TIPO is (<>); -- Que puede ser TIPO? Un tipo discreto:
                        -- Integer, Enumeration
    
package Genericos2 is

    procedure asignar(dato: TIPO);
    procedure asignarAlAzar;
    function comprobar(dato: TIPO) return Boolean;

    asignado: TIPO;
    
end Genericos2;

--TIPO ENUMERADO
-- Guardais un valor
-- Comprobais que el valor coincide con uno concreto que os inventeis