with Ada.Text_IO;                                       use Ada.Text_IO;

package body JuegoArribaAbajo is
   
    overriding procedure mensajeDeFallo (juego: JuegoNumeroArribaAbajo; NumeroOrdenador: Integer; NumeroJugador:Integer) is
    begin
        if NumeroJugador > NumeroOrdenador  then
            Put_Line( "Mi número es menor" );
        else
            Put_Line( "Mi búmero es mayor" );
        end if;
    end mensajeDeFallo;
   
end JuegoArribaAbajo;
