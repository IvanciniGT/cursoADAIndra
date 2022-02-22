-- Teniendo en cuenta que quizás algún día nos interese aumentar su funcionalidad
-- with Ada.Integer_Text_IO;  use Ada.Integer_Text_IO;
-- with Ada.Text_IO;  use Ada.Text_IO;

with PiedraPapelTijeraOpciones;         use PiedraPapelTijeraOpciones;

package UITerminalPiedraPapelTijera is
    
    -- ----------------------------------------------------------------------------
    --   UI: Obtener opción del jugador (PIEDRA, PAPEL, TIJERA)
    -- ----------------------------------------------------------------------------
    function obtener_opcion_jugador return OPCION ;

end UITerminalPiedraPapelTijera;