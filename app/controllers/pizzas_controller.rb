class PizzasController < ApplicationController

    def new
        @pizza = Pizza.new
        #Trae los elementos base para la pizza. "Pan y salsa"
        @base = Tipo.where(nombre: "Base")
        #Trae todos los tipos ingredientes y sus ing. asociados excepto "Base"
        @tipos = Tipo.where.not(nombre: "Base")
    end

end