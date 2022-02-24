with Partida;                         

package LibreriaJuego is
    
    type Juego is tagged null Record;
    
    function JugarMano( juego: Juego ) return Partida.Resultado;
    
end LibreriaJuego;
