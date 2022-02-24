with Ada.Text_IO;                                       use Ada.Text_IO;

package body JuegoFrioCaliente is
   
    overriding procedure mensajeDeFallo (juego: JuegoNumeroFrioCaliente; NumeroOrdenador: Integer; NumeroJugador:Integer) is
        ERROR_ESTIMACION_JUGADOR:   Integer;
    begin

        ERROR_ESTIMACION_JUGADOR := abs( NumeroJugador - NumeroOrdenador );
        -- Pista
        if ERROR_ESTIMACION_JUGADOR < 3 then
            Put_Line( "Muy caliente! Casi te quemas ;)" );
        elsif ERROR_ESTIMACION_JUGADOR < 5 then
            Put_Line( "Caliente! Este es el camino :p" );
        elsif ERROR_ESTIMACION_JUGADOR < 7 then
            Put_Line( "Templado! Aún te falta :|" );
        elsif ERROR_ESTIMACION_JUGADOR < 10 then
            Put_Line( "Frio! Por ahí no va la cosa... :(" );
        else
            Put_Line( "Muy frio! Tu para adivino no has nacido xD" );
        end if;
    end mensajeDeFallo;
   
end JuegoFrioCaliente;
