with Ada.Text_IO;                                       use Ada.Text_IO;
with Ada.Integer_Text_IO;                               use Ada.Integer_Text_IO;  
                         

procedure JuegoFrioCaliente is
   
    type NUMERO_JUEGO is new Integer range 1 .. 20;
    type INTENTO is new integer range 0 .. 3;
   
   
    NUMERO_ORDENADOR:           NUMERO_JUEGO;
    NUMERO_JUGADOR:             Integer;
    INTENTOS_DISPONIBLES:       INTENTO           :=3;
    ERROR_ESTIMACION_JUGADOR:   Integer;
   
begin
    
    -- Número que piensa el ordenador. De momento uno fijo.
    NUMERO_ORDENADOR := 17;
   
   -- Jugar manos... Cuantas? Hasta 3 (Mientras le quesasen intentos disponibles)
                                -- Que gane. Si acierta, también paramos
    --while INTENTOS_DISPONIBLES > 0 and ERROR_ESTIMACION_JUGADOR /= 0 loop
    loop  
                                        -- no ha acertado 
                                        -- Si acierta ERROR_ESTIMACION_JUGADOR = 0
       
        Put_Line( "Qué número crees que he pensado?" );
        Get( NUMERO_JUGADOR );
                                        --      15     -      14 =   1,2
        ERROR_ESTIMACION_JUGADOR := abs( NUMERO_JUGADOR - Integer'Value(NUMERO_JUEGO'Image(NUMERO_ORDENADOR)) );
       
        if ERROR_ESTIMACION_JUGADOR = 0 then
            Put_Line( "Enhorabuena, has ganado !!!!" );
        else
            Put_Line( "Lo siento... ese no era el número que he pensado." );
            INTENTOS_DISPONIBLES := INTENTOS_DISPONIBLES - 1;
            
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
            
        end if;
               
        exit when INTENTOS_DISPONIBLES = 0 or ERROR_ESTIMACION_JUGADOR = 0 ;
    end loop;
   
    if ERROR_ESTIMACION_JUGADOR /= 0 then -- Si no acerto
        Put_Line("Perdiste. Ya no te quedan intentos.");
    end if;

end JuegoFrioCaliente;
