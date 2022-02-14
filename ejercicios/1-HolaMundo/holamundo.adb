-- Comentarios: Se usan para explicar cómo se comporta un código
--              Por qué he escrito el código de una determina forma.
--              Pistas a gente que venga detrás de mi, de cómo hago algo... o por qué he tomado una decisión
--              a la hora de escribir mi programa

-- Documentar un código? Explicar QUE HACE el código, y cómo pedirle que lo haga

-- Todo código / programa tiene que tener su documentación y sus comentarios.
-- La tendencia HOY en DIA es:
    -- Comentar lo mínimo posible... el código debe ser autoexplicativo.
-- Las librerias que utilice, las TENGO que DECLARAR PREVIAMENTE con la palabra WITH

with Ada.Text_IO;

procedure HolaMundo is
begin
    Ada.Text_IO.Put_Line("Hola amigo!!!");
end HolaMundo;

