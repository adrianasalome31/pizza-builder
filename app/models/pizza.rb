class Pizza < ApplicationRecord
    has_many :pizza_ingredientes
    has_many :ingredientes, through: :pizza_ingredientes
end