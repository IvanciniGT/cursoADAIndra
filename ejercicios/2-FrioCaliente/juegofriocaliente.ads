with Ada.Text_IO;                                       use Ada.Text_IO;
with Ada.Integer_Text_IO;                               use Ada.Integer_Text_IO;  
with JuegoAdivinar;                                     use JuegoAdivinar;

package JuegoFrioCaliente is
    
    type JuegoNumeroFrioCaliente is new JuegoAdivinarNumero with Record
        pistas: Boolean:= True;
    end record;
    overriding procedure mensajeDeFallo (juego: JuegoNumeroFrioCaliente; NumeroOrdenador: Integer; NumeroJugador:Integer);

end JuegoFrioCaliente;
