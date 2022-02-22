-- Teniendo en cuenta que quizás algún día nos interese aumentar su funcionalidad
-- with Ada.Integer_Text_IO;  use Ada.Integer_Text_IO;
-- with Ada.Text_IO;  use Ada.Text_IO;

with Partida;

package UITerminalPartida is
    
    -- ----------------------------------------------------------------------------
    --   UI: Mostrar el ganador de la partida por consola
    -- ----------------------------------------------------------------------------
    procedure proclamar_ganador_partida(ganador: Partida.RESULTADO) ;
    
    -- ----------------------------------------------------------------------------
    --   UI: Mostrar el ganador de la mano por consola
    -- ----------------------------------------------------------------------------
    procedure proclamar_ganador_mano(ganador: Partida.RESULTADO) ;


end UITerminalPartida;