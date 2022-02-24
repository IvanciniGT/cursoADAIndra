with Genericos2;
with ada.Text_IO;   use ada.Text_IO;

procedure Prueba is
    type opciones is (PIEDRA, PAPEL, TIJERA);
    package Mio is new Genericos2 (
        TIPO => opciones
    );
    use MIO;
    acierto: Boolean;
begin
    asignarAlAzar;
    acierto:= comprobar(PIEDRA);
    Put_Line(acierto'Image);
end Prueba;