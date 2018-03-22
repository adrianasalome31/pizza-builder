class CreatePizzaIngredienteJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_table :pizza_ingredientes do |t|
      t.integer :pizza_id 
      t.integer :ingrediente_id
    end
  end
end
