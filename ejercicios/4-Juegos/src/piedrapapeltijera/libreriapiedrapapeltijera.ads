with Partida;                         
with LibreriaJuego;             use LibreriaJuego;                         

package LibreriaPiedraPapelTijera is
    
    type PiedraPapelTijera is new Juego null Record;
    
    overriding function JugarMano( juego: PiedraPapelTijera ) return Partida.Resultado;
    
    type PiedraPapelTijeraLagartoSpock is new PiedraPapelTijera null Record;
    
    --overriding function JugarMano( juego: PiedraPapelTijeraLagartoSpock ) return Partida.Resultado;
    
end LibreriaPiedraPapelTijera;
