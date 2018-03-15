class Ingrediente < ApplicationRecord
    has_attached_file :imagen, styles: { small: "200x200#", medium: "300x300>", thumb: "512x512#" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :imagen, content_type: /\Aimage\/.*\z/

    belongs_to :tipo
end
