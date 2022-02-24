with Ada.Text_IO;                                       use Ada.Text_IO;
with Ada.Integer_Text_IO;                               use Ada.Integer_Text_IO;  
with Partida;                         

package JuegoAdivinar is
    
    type JuegoAdivinarNumero is tagged Record
        minimo : Integer;
        maximo : Integer;
        intentos: Integer;
    end record;
    
    function JugarMano( juego: JuegoAdivinarNumero ) return Partida.Resultado;
    
end JuegoAdivinar;
