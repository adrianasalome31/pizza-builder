require 'test_helper'

class IngredienteTest < ActiveSupport::TestCase

  def setup
    @tipo = Tipo.create!(nombre: "Carne")
    @ingrediente = @tipo.ingredientes.build(nombre: "Queso", precio: "10.4")
  end

  test 'ingrediente without tipo should be invalid' do
    @ingrediente.tipo_id = nil
    assert_not @ingrediente.valid?
  end

  test 'ingrediente should be valid' do
    assert @ingrediente.valid?
  end

  test 'nombre should be present' do
    @ingrediente.nombre = " "
    assert_not @ingrediente.valid?
  end

  test "nombre shouldn't be less than 2 characters" do
    @ingrediente.nombre = "a"
    assert_not @ingrediente.valid?
  end

  test 'precio should be present' do
    @ingrediente.precio = " "
    assert_not @ingrediente.valid?
  end

end
