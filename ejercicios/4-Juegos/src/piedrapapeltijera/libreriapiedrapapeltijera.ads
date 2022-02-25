with Partida;                         
with LibreriaJuego;             use LibreriaJuego;                         

generic 
    --type TIPO is private; -- Que puede ser TIPO? Cualquier cosa
    type OPCION is (<>); -- Que puede ser TIPO? Un tipo discreto:
                        -- Integer, Enumeration

package LibreriaPiedraPapelTijera is
    
    type PiedraPapelTijera is new LibreriaJuego.Juego null Record;
    
    overriding function JugarMano( juego: PiedraPapelTijera ) return Partida.Resultado;
    
    type REGLAS_JUEGO is array (OPCION, OPCION) of Partida.Resultado;
    
    function cargarReglas( juego: PiedraPapelTijera ) return REGLAS_JUEGO;
    
    --type OPCIONES_JUEGO is array (1..3) of OPCION;

    --function opcionesDisponibles( juego: PiedraPapelTijera ) return OPCIONES_JUEGO;
    
end LibreriaPiedraPapelTijera;
