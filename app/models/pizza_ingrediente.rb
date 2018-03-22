class PizzaIngrediente < ApplicationRecord
    belongs_to :pizza
    belongs_to :ingrediente
end