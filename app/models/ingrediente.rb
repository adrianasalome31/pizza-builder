class Ingrediente < ApplicationRecord
    has_attached_file :imagen, styles: { small: "200x200#", medium: "300x300>", thumb: "512x512#" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :imagen, content_type: /\Aimage\/.*\z/

    validates :nombre, presence: true, length: { minimum: 2 }
    validates :precio, presence: true
    validates :tipo_id, presence: true

    belongs_to :tipo

    has_many :pizza_ingredientes
    has_many :pizzas, through: :pizza_ingredientes

end
