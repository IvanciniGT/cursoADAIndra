
with Partida;                       use Partida;                       
with Ada.Integer_Text_IO;           use Ada.Integer_Text_IO;
with Ada.Text_IO;                   use Ada.Text_IO;

package body UITerminalPartida is
    
    -- ----------------------------------------------------------------------------
    --   UI: Mostrar el ganador de la partida por consola
    -- ----------------------------------------------------------------------------
    procedure proclamar_ganador_partida(ganador: RESULTADO) is
    begin
        if ganador = ORDENADOR then
            Put_Line("He ganado YO... paquete !!!");
        else
            Put_Line("Has ganado TU... suerte del principiante.... :<");
        end if;   
    end proclamar_ganador_partida;
    
    -- ----------------------------------------------------------------------------
    --   UI: Mostrar el ganador de la mano por consola
    -- ----------------------------------------------------------------------------
    procedure proclamar_ganador_mano(ganador: RESULTADO) is
    begin
        if ganador = ORDENADOR then
            Put_Line("En esta te he pulido.... !!!");
        elsif ganador = JUGADOR then
            Put_Line("Maldito.. que me has ganado esta ronda");
        else
            Put_Line("Hemos empatado.");
        end if;   
    end proclamar_ganador_mano;

end UITerminalPartida;