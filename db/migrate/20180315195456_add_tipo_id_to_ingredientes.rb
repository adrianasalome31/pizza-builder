class AddTipoIdToIngredientes < ActiveRecord::Migration[5.1]
  def change
    add_column :ingredientes, :tipo_id, :integer
  end
end
