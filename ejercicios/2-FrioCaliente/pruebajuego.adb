with Partida;
with JuegoAdivinar; use JuegoAdivinar;

procedure PruebaJuego is
    juego: JuegoAdivinarNumero;
    resultadoMano: Partida.Resultado;
begin
    juego:= (
        minimo => 1,
        maximo => 10,
        intentos => 3
    );
    
    resultadoMano := JugarMano(juego);
    resultadoMano := juego.JugarMano;
    
end PruebaJuego;