with ada.Text_IO;       use ada.Text_IO;

procedure OOP is
    
    package Geometria is
        
        type FiguraGeometrica is tagged Record      -- < Clase
            area: Integer;
            perimetro: Integer;
        end record;
        
        -- Primitivas: Aociadas a un tipo de datos... 
        -- por estar definidas en el mismo paquete que un tipo de datos
        procedure imprimirDatos(figura: FiguraGeometrica);
        
        procedure dobleArea(figura: FiguraGeometrica);
        
        type Poligono is new FiguraGeometrica with Record
            lados: Integer;
        end record;
    
        overriding procedure imprimirDatos(figura: Poligono);
        
    end Geometria;
    
    package body Geometria is
        
        procedure imprimirDatos(figura: FiguraGeometrica) is
        begin
            Put_Line("Datos de la figura geométrica:");
            Put_Line("  Area:      " & figura.area'Image);
            Put_Line("  Perimetro: " & figura.perimetro'Image);
        end imprimirDatos;
        
        procedure dobleArea(figura: FiguraGeometrica) is
        begin
            Put_Line("  2xArea:      " & Integer'Image(figura.area*2));
        end dobleArea;
        
        procedure imprimirDatos(figura: Poligono) is
        begin
            Put_Line("Datos de la figura geométrica:");
            Put_Line("  Area:      " & figura.area'Image);
            Put_Line("  Perimetro: " & figura.perimetro'Image);
            Put_Line("  Lados:     " & figura.lados'Image);
        end imprimirDatos;
        
    end Geometria;
    
    use Geometria;
    
    
    circulo:  FiguraGeometrica := ( area=> 3, perimetro => 15);
    cuadrado: Poligono         := ( area=> 4, perimetro => 8, lados=> 4);
    
begin
    circulo.imprimirDatos;
    cuadrado.imprimirDatos;
    circulo.dobleArea;
    cuadrado.dobleArea;
end OOP;