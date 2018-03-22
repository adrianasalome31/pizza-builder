require 'test_helper'

class IngredientesIndexTest < ActionDispatch::IntegrationTest
  
  def setup
    @tipo = Tipo.create!(nombre: "Carne")
    @ingrediente = @tipo.ingredientes.build(nombre: "Pepperoni", precio: "10.4")
  end

  test 'should get ingredientes index' do
    get ingredientes_path
    assert_response :success
  end

  test 'should get ingredientes listing' do
    get ingredientes_path
    assert_match @ingrediente.nombre, @response.body
  end

end
