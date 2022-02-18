
-- Que es un paquete?
-- Conjunto de funciones, procedimientos y variables agrupados en un módulo reutilizable.

-- Ada.Text_IO;
-- Ada.Containers -- Son una alternativa a los Arrays a la hora de guardar datos en memoria

-- Array tenian limitaciones:
-- - Solo podían ser de un tipo             <<< Records (Permiten guardar cosas diferentes. Un numero cerrado, fijo de cosas)
-- - Tenían un tamaño fijo de antemano
            -- Unbounded_String: Lista de elementos de tipo CARACTER de tamaño variable

with Ada.Text_IO;
use Ada.Text_IO;

with Ada.Containers.Vectors; -- Un Vector de un array de tamaño variable.
                             -- Dentro podré poner solo 1 tipo de elemento... El que yo quiera... pero solo 1.
--use Ada.Containers.Vectors;
-- No puedo usarlo directamente... Tengo que crear mi propio PAQUETE basado en él para usarlo.
-- Donde ya voy a especificar el tipo de datos que quiero guardar dentro...
-- Y el rango de claves...


procedure Genericos is
    
    package miPaqueteDeVectores is new Ada.Containers.Vectors
    (
        -- Esto no me lo he inventado.. son datos que me dice el paquete 
        -- Ada.Containers.Vectors que debo utilizar (GENERICOS)
        Index_Type      => Positive,       -- 1,2,3,4,5...   Natural
        Element_Type    => Integer
    );
    --MI_VECTOR: miPaqueteDeVectores.Vector;

    use miPaqueteDeVectores;

    MI_VECTOR: Vector;
    
begin
    MI_VECTOR.append(1);
    MI_VECTOR.append(2);
    MI_VECTOR.append(3);
    MI_VECTOR.append(4);
    MI_VECTOR.append(5);
    MI_VECTOR.prepend(6);
    MI_VECTOR.append(7);
    
    MI_VECTOR.delete(3); --2 -- 3 -- 4 ?
    
    for ELEMENTO of MI_VECTOR loop
        Put_Line( ELEMENTO'Image );
    end loop;

end Genericos;