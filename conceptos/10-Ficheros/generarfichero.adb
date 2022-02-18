-- Generar/leer ficheros:
--  - Almacenar información PERSISTENTEMENTE
--  - Compartir información entre programas
--  - Exportar información

with Ada.Text_IO;
use Ada.Text_IO;

procedure GenerarFichero is
    miFichero: File_type;
begin
    
    -- Crear u nuevo fichero o abrir uno existente
    Create(
        File    =>  miFichero, -- descriptor del fichero.... Cómo me voy a referir desde mi programa al fichero
        Mode    =>  Out_file,  -- Un fichero para OUT (salida) para escribir en él
        Name    =>  "prueba.txt" -- Nombre del fichero en mi disco duro.. en mis carpetas
    );
    
    Put_Line( miFichero, "Hola");
    Put_Line( miFichero, "amigo");
    Put_Line( miFichero, "Adios");
    
    Close( miFichero );
    
    
end GenerarFichero;
