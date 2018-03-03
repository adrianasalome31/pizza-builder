class AddAttachmentImagenToIngredientes < ActiveRecord::Migration[5.1]
  def self.up
    change_table :ingredientes do |t|
      t.attachment :imagen
    end
  end

  def self.down
    remove_attachment :ingredientes, :imagen
  end
end
