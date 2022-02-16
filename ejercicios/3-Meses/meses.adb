-- quiero un array con los meses del año:
-- ENERO, FEBRERO, MARZO....
-- Y que mostreis por pantalla los meses
with Ada.Integer_Text_IO;               use Ada.Integer_Text_IO;
with Ada.Text_IO;                       use Ada.Text_IO;
procedure Meses is
        -- Cuanto bits hacen falta aquí? 4 -> 16 cosas diferentes
    -- Aqui digo los posibles meses
    type MES is (ENERO, FEBRERO, MARZO, ABRIL, MAYO, JUNIO, JULIO, AGOSTO, SEPTIEMBRE, OCTUBRE, NOVIEMBRE, DICIEMBRE);
    MESES: array (1..12) of MES;
    MESES_VACACIONES: array (1..3) of MES;
begin
    -- Aqui digo los meses de un año
    MESES:= (ENERO, FEBRERO, MARZO, ABRIL, MAYO, JUNIO, JULIO, AGOSTO, SEPTIEMBRE, OCTUBRE, NOVIEMBRE, DICIEMBRE);
    -- Aqui defino los meses de vacaicones
    MESES_VACACIONES:= (JULIO, AGOSTO, SEPTIEMBRE);
    
    Put_Line("Meses del año");
    for mes of MESES loop  
        Put_Line( MES'Image(mes) );                       
    end loop;
    
    Put_Line("Meses de vacaciones");
    for mes of MESES_VACACIONES loop  
        Put_Line( MES'Image(mes) );                         
    end loop;
    
end Meses;