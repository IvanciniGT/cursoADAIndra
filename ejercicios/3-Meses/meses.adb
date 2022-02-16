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
    DIAS_DE_CADA_MES: array (MES) of Integer; -- Los propios meses son el indice del array
    MESES_VACACIONES: array (1..3) of MES;
begin
    -- Aqui digo los meses de un año
    MESES:= (ENERO, FEBRERO, MARZO, ABRIL, MAYO, JUNIO, JULIO, AGOSTO, SEPTIEMBRE, OCTUBRE, NOVIEMBRE, DICIEMBRE);
    -- Aqui defino los meses de vacaicones
    MESES_VACACIONES:= (JULIO, AGOSTO, SEPTIEMBRE);
    -- Aqui defino los dias de cada mes
    DIAS_DE_CADA_MES:= (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
    --DIAS_DE_CADA_MES(ENERO):=31;
    --DIAS_DE_CADA_MES(FEBRERO):=28;
    Put_Line("Meses del año");
--    for indice_mes in 1..12 loop
    for mes of MESES loop  
        --Put_Line( MES'Image(MESES(indice_mes)) & " " &Integer'Image( DIAS_DE_CADA_MES(indice_mes) ) );                       
        Put_Line( MES'Image(mes) & " " &Integer'Image( DIAS_DE_CADA_MES(mes) ) );                       
    end loop;
    
    Put_Line("Meses de vacaciones");
    for mes of MESES_VACACIONES loop  
        Put_Line( MES'Image(mes) & " " &Integer'Image( DIAS_DE_CADA_MES(mes) ) );                         
    end loop;
    
    Put(DIAS_DE_CADA_MES(FEBRERO));
    
end Meses;