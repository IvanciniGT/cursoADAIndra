-- Teniendo en cuenta que quizás algún día nos interese aumentar su funcionalidad
with Partida;                           use Partida;
with PiedraPapelTijera;                 use PiedraPapelTijera;

procedure Jugar is
    NUMERO_DE_MANOS: constant := 2;
    ganador:RESULTADO ;
begin
    ganador := JugarPartida( JugarMano'Access, NUMERO_DE_MANOS );
end Jugar;