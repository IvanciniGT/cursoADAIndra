with LibreriaPiedraPapelTijera;
with Partida;
procedure Test is
    
    mijuego: LibreriaJuego.Juego;
    resultado: Partida.Resultado;
    
begin
    mijuego:= VariedadesPPT.juegoPPTBasico;
    resultado:=jugarMano(mijuego);
end Test;