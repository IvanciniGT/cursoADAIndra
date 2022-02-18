RAM
    numero -> 17 
    
    nombre -> "Ivan"
    UnNombre /          -- Paso de valor por referencia (access)
    
    UnNumero -> 17      -- Pasar un argumento por VALOR 
                            (Haciendo una copia en la RAM)
    
Esas variables han sido creadas al momento de arrancar un procedimiento1.

Imaginad que desde ese procedimiento llamo a otro procedimiento2.
Y a ese procedimiento2, le paso numero y nombre.

Quien toma la decisión de si un argumento se copia (se duplica) 
en el momento de pasarlo? el COMPILADOR (gnat)

gnat... sabe un huevo de como funciona una computadora
        y "en general" va a tomar una decisión MUY ACERTADA.
        
in      < Un valor solo se pueda leer (constante)

in out  < Un valor se pueda leer y cambiar          | Implican un 
out     < Un valor no se pueda ller... solo cambiar | paso por 
                                                    | referencia
