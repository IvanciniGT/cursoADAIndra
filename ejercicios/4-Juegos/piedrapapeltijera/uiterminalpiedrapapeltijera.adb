
with Partida;                       use Partida;
with JugarPiedraPapelTijera;        use JugarPiedraPapelTijera;
with Ada.Integer_Text_IO;           use Ada.Integer_Text_IO;
with Ada.Text_IO;                   use Ada.Text_IO;

package body UITerminalPiedraPapelTijera is
    
    -- ----------------------------------------------------------------------------
    --   UI: Mostrar el ganador de la partida por consola
    -- ----------------------------------------------------------------------------
    procedure proclamar_ganador_partida(ganador: RESULTADO) is
    begin
        if ganador_mano then
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
        if ganador_mano then
            Put_Line("En esta te he pulido.... !!!");
        else
            Put_Line("Maldito.. que me has ganado esta ronda");
        end if;   
    end proclamar_ganador_mano;

    -- ----------------------------------------------------------------------------
    --   UI: Obtener opción del jugador (PIEDRA, PAPEL, TIJERA)
    -- ----------------------------------------------------------------------------
    function obtener_opcion_jugador() return OPCION is
        mano_jugador_formato_numero:    Integer;
        conversion_numero_opcion:       array (0..2) of OPCION      := (PIEDRA, PAPEL, TIJERA);
    begin
        Put_Line("Que sacas?  0: Piedra | 1: Papel | 2: Tijera");
        Get(mano_jugador_formato_numero);
        return conversion_numero_opcion( mano_jugador_formato_numero );
    end obtener_opcion_jugador;

end UITerminalPiedraPapelTijera;