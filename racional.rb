# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion  
 
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

    def resta(fraccion)
       mcm = (@den * fraccion.den)/gcd(@den, fraccion.den)
       primero = Fraccion.new((mcm/@den) * @num, mcm)
       segundo = Fraccion.new((mcm/fraccion.den) * fraccion.num, mcm)
       minexpresion(Fraccion.new(primero.num - segundo.num, mcm))
    end

    def producto(fraccion)
       minexpresion(Fraccion.new(@num * fraccion.num, @den * fraccion.den))
    end

    def division(fraccion)
       minexpresion(Fraccion.new(@num * fraccion.den, @den * fraccion.num))
    end

end


a=Fraccion.new(13,4)
b=Fraccion.new(7,5)

a.to_s
b.to_s

c = a.suma(b)
c.to_s
