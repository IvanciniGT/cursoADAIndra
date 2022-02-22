
with PiedraPapelTijeraOpciones;     use PiedraPapelTijeraOpciones;
with Ada.Integer_Text_IO;           use Ada.Integer_Text_IO;
with Ada.Text_IO;                   use Ada.Text_IO;

package body UITerminalPiedraPapelTijera is

    -- ----------------------------------------------------------------------------
    --   UI: Obtener opción del jugador (PIEDRA, PAPEL, TIJERA)
    -- ----------------------------------------------------------------------------
    function obtener_opcion_jugador return OPCION is
        mano_jugador_formato_numero:    Integer;
        conversion_numero_opcion:       array (0..2) of OPCION      := (PIEDRA, PAPEL, TIJERA);
    begin
        Put_Line("Que sacas?  0: Piedra | 1: Papel | 2: Tijera");
        Get(mano_jugador_formato_numero);
        return conversion_numero_opcion( mano_jugador_formato_numero );
    end obtener_opcion_jugador;

end UITerminalPiedraPapelTijera;