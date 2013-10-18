# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion  
    
    #Descomposición de los parámetros enviados a los métodos en las siguientes variables de instancia.
    attr_reader :num, :den

    
    # Inicialización tanto del numerador como del denominador de una fracción, con un pequeño test para comprobar que son enteros.   
    def initialize(num,den)
      if num.is_a?Integer and den.is_a?Integer
        @num, @den = num, den
      end
    end

    
    #Método utilizado para la correcta visualización de las fracciones en un formato legible.
    def to_s
       puts "#{@num}/#{@den}"
    end

    
    #Método para reducir cada fracción a su expresión mínima
    def minexpresion(fraccion)
       mcd = gcd(fraccion.num, fraccion.den)
       Fraccion.new(fraccion.num/mcd, fraccion.den/mcd)
    end

    
    #Método para realizar una suma y minimizar el resultado.
    def suma(fraccion)
       mcm = (@den * fraccion.den)/gcd(@den, fraccion.den)
       primero = Fraccion.new((mcm/@den) * @num, mcm)
       segundo = Fraccion.new((mcm/fraccion.den) * fraccion.num, mcm)
       minexpresion(Fraccion.new(primero.num + segundo.num, mcm))
    end
    
    
    #Método para realizar una resta y minimizar el resultado.
    def resta(fraccion)
       mcm = (@den * fraccion.den)/gcd(@den, fraccion.den)
       primero = Fraccion.new((mcm/@den) * @num, mcm)
       segundo = Fraccion.new((mcm/fraccion.den) * fraccion.num, mcm)
       minexpresion(Fraccion.new(primero.num - segundo.num, mcm))
    end

    
    #Método que realiza el producto entre dos fracciones y minimiza el resultado
    def producto(fraccion)
       minexpresion(Fraccion.new(@num * fraccion.num, @den * fraccion.den))
    end

    
    #Método que realiza la división entre dos fracciones y minimiza el resultado
    def division(fraccion)
       minexpresion(Fraccion.new(@num * fraccion.den, @den * fraccion.num))
    end

end

#Ejecución de algunas operaciones.
a=Fraccion.new(13,21)
b=Fraccion.new(8,7)

puts "La fracción 'a' es:"
a.to_s
puts "La fracción 'b' es:"
b.to_s

c = a.suma(b)
puts "\nLa suma de a + b es:"
c.to_s

c = a.resta(b)
puts "\nLa resta de a - b es:"
c.to_s

c = a.producto(b)
puts "\nEl producto de a * b es:"
c.to_s

c = a.division(b)
puts "\nLa división de a / b es:"
c.to_s