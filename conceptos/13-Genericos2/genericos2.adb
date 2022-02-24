with Ada.Numerics.Discrete_Random;
package body Genericos2 is

    procedure asignar(dato: TIPO) is
    begin
        asignado:=dato;
    end asignar;
    
    procedure asignarAlAzar is
        DATO_AZAROSO: TIPO;
        
        package EleccionOrdenadorAleatoria is new Ada.Numerics.Discrete_Random
        (
            Result_Subtype    => TIPO
        );
        use EleccionOrdenadorAleatoria;
        Generador_Aleatorio: Generator;
        
    begin
        reset(Generador_Aleatorio);
        DATO_AZAROSO := random(Generador_Aleatorio); 
        
        asignado:=DATO_AZAROSO;
    end asignarAlAzar;

    function comprobar(dato: TIPO) return Boolean is
    begin
        return dato = asignado;
    end comprobar;

end Genericos2;