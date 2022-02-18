-- Generar/leer ficheros:
--  - Almacenar información PERSISTENTEMENTE
--  - Compartir información entre programas
--  - Exportar información

with Ada.Text_IO;
use Ada.Text_IO;

procedure LeerFichero is
    miFichero: File_type;
begin
    
    -- Crear u nuevo fichero o abrir uno existente
    Open(
        File    =>  miFichero, -- descriptor del fichero.... Cómo me voy a referir desde mi programa al fichero
        Mode    =>  In_file,  -- Un fichero para In (entrada) para leer de él
        Name    =>  "prueba.txt" -- Nombre del fichero en mi disco duro.. en mis carpetas
    );
    -- Mientras NO esté en el FIN DEL FICHERO
    while not End_of_file(miFichero) loop
        Put_Line( Get_line(miFichero) );
    end loop;

    Close( miFichero );
    
end LeerFichero;
