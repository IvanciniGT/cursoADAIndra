with Partida;
with JuegoAdivinar; use JuegoAdivinar;
with JuegoFrioCaliente; use JuegoFrioCaliente;
with JuegoArribaAbajo; use JuegoArribaAbajo;

procedure PruebaJuego is
    juego: JuegoAdivinarNumero;
    juego2: JuegoNumeroFrioCaliente;
    juego3: JuegoNumeroArribaAbajo;
    resultadoMano: Partida.Resultado;
begin
    juego:= (
        minimo => 1,
        maximo => 10,
        intentos => 3
    );
    
    resultadoMano := juego.JugarMano; --JugarMano(juego);
    
    juego2:= (
        minimo => 1,
        maximo => 20,
        intentos => 3,
        pistas => True
    );
    
    resultadoMano := juego2.JugarMano;
    
    juego3:= (
        minimo => 1,
        maximo => 20,
        intentos => 4,
        pistas => True
    );
    
    resultadoMano := juego3.JugarMano;
    
end PruebaJuego;