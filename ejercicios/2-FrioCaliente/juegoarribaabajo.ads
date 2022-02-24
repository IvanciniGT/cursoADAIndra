with Ada.Text_IO;                                       use Ada.Text_IO;
with Ada.Integer_Text_IO;                               use Ada.Integer_Text_IO;  
with JuegoAdivinar;                                     use JuegoAdivinar;

package JuegoArribaAbajo is
    
    type JuegoNumeroArribaAbajo is new JuegoAdivinarNumero with Record
        pistas: Boolean:= True;
    end record;
    overriding procedure mensajeDeFallo (juego: JuegoNumeroArribaAbajo; NumeroOrdenador: Integer; NumeroJugador:Integer)
end JuegoArribaAbajo;
