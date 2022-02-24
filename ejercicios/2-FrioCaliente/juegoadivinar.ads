with Partida;                         
with LibreriaJuego;             use LibreriaJuego;                         

package JuegoAdivinar is
    
    type JuegoAdivinarNumero is new Juego with Record
        minimo : Integer;
        maximo : Integer;
        intentos: Integer;
    end record;
    
    overriding function JugarMano( juego: JuegoAdivinarNumero ) return Partida.Resultado;
    
    procedure mensajeDeFallo (juego: JuegoAdivinarNumero; NumeroOrdenador: Integer; NumeroJugador:Integer);
    
end JuegoAdivinar;
