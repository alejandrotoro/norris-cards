class AgregarCampoImagenSmallToCarta < ActiveRecord::Migration
  def up
    remove_column :carta, :imagen
    add_column :carta, :imagen_small, :string
    add_column :carta, :imagen_big, :string
  end

  def down
    add_column :carta, :imagen, :string
    remove_column :carta, :imagen_small
    remove_column :carta, :imagen_big
  end
end
