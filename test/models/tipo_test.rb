require 'test_helper'

class TipoTest < ActiveSupport::TestCase

    def setup
        @tipo = Tipo.create!(nombre: "Vegetales")
    end

    test 'tipo should be valid' do
        assert @tipo.valid?
    end

    test 'nombre should be present' do
        @tipo.nombre = " "
        assert_not @tipo.valid?
    end

end