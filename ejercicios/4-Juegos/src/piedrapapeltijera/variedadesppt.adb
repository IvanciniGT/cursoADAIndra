package body VariedadesPPT is
    
    function juegoPPTBasico return LibreriaJuego.Juego is
        type OPCIONES_BASICAS is (PIEDRA, PAPEL, TIJERA);
    
        package mio is new LibreriaPiedraPapelTijera (
            OPCION => OPCIONES_BASICAS
        );
        use mio;
        mijuego: PiedraPapelTijera;
    begin
        return mijuego;
    end juegoPPTBasico;
    
end VariedadesPPT;