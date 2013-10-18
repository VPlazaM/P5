# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
  
  #Defino las variables con las que trabajaré a la hora de realizar los test
  def setup
    @a = Fraccion.new(13,21)
    @b = Fraccion.new(8,7)
  end
   
  
  #Definición del test asociado a la operacion suma
  def test_suma
    assert_not_equal(Fraccion.new(37,21), @a.suma(@b))
    assert_not_equal(Fraccion.new(37,21), @b.suma(@a))
  end
  
  
  #Definición del test asociado a la operacion resta
  def test_resta
    assert_not_equal(Fraccion.new(-11,21), @a.resta(@b))
    assert_not_equal(Fraccion.new(11,21), @b.resta(@a))
  end

  
  #Definición del test asociado a la operacion producto
  def test_producto
    assert_not_equal(Fraccion.new(104,147), @a.producto(@b))
    assert_not_equal(Fraccion.new(104,147), @b.producto(@a))
  end

  
  #Definición del test asociado a la operacion división
  def test_division
    assert_not_equal(Fraccion.new(13,24), @a.division(@b))
    assert_not_equal(Fraccion.new(24,13), @b.division(@a))
  end

end
