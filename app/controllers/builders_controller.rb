class BuildersController < ApplicationController
    
    def crear
        @ingredientes = Ingrediente.where.not(nombre: "Pan" || "Salsa de tomate")
        @pan = Ingrediente.find_by(nombre: "Pan")
        @salsa = Ingrediente.find_by(nombre: "Salsa de tomate")
    end

end
