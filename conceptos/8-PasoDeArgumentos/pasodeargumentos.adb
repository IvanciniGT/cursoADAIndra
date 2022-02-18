
procedure procedimiento1 is
    numero: Integer;
    nombre: Unbounded_String;

    function procedimiento2 ( UnNumero: Integer; UnNombre: in out Unbounded_String) is
    begin
        Put_Line ( UnNumero'Image & To_String(UnNombre) );
    end procedimiento2;
    
begin
    
    numero:=17;
    nombre:="Ivan";
    procedimiento2( numero, nombre );
    
end procedimiento1;
