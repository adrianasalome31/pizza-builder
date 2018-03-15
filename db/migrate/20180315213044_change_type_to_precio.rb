class ChangeTypeToPrecio < ActiveRecord::Migration[5.1]
  def change
    change_column :ingredientes, :precio, :float
  end
end
