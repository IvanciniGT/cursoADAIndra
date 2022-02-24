with Ada.Text_IO;                                       use Ada.Text_IO;
with Ada.Integer_Text_IO;                               use Ada.Integer_Text_IO;  
with Partida;                                           use Partida;                         
with Ada.Numerics.Discrete_Random;

package body JuegoAdivinar is

    procedure mensajeDeFallo (juego: JuegoAdivinarNumero; NumeroOrdenador: Integer; NumeroJugador:Integer) is
    begin
        Put_Line( "Lo siento... ese no era el número que he pensado." );
    end mensajeDeFallo;
    
    function JugarMano( juego: JuegoAdivinarNumero ) return Partida.Resultado is
        NUMERO_ORDENADOR:           Integer;
        NUMERO_JUGADOR:             Integer;
        INTENTOS_DISPONIBLES:       Integer           := juego.intentos;
        
        subtype rango_numeros is Integer range juego.minimo .. juego.maximo;
        
        package EleccionOrdenadorAleatoria is new Ada.Numerics.Discrete_Random
        (
            Result_Subtype    => rango_numeros
        );
        use EleccionOrdenadorAleatoria;
        Generador_Numeros: Generator;
        
    begin
        reset(Generador_Numeros);
        NUMERO_ORDENADOR := random(Generador_Numeros); 
        loop  
            Put_Line( "Qué número crees que he pensado?" );
            Get( NUMERO_JUGADOR );

            if NUMERO_JUGADOR = NUMERO_ORDENADOR then
                Put_Line( "Enhorabuena, has ganado !!!!" );
            else
                -- Pista
                mensajeDeFallo(juego,NUMERO_ORDENADOR,NUMERO_JUGADOR);
                INTENTOS_DISPONIBLES := INTENTOS_DISPONIBLES - 1;
            end if;
                   
            exit when INTENTOS_DISPONIBLES = 0 or NUMERO_JUGADOR = NUMERO_ORDENADOR ;
        end loop;
       
        if NUMERO_JUGADOR /= NUMERO_ORDENADOR then -- Si no acerto
            Put_Line("Perdiste. Ya no te quedan intentos.");
            return ORDENADOR;
        end if;
        return JUGADOR;
    
    end JugarMano;
end JuegoAdivinar;
