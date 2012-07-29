class AgregarCampoNombreAPartida < ActiveRecord::Migration
  def up
    add_column :partidas, :nombre, :string
  end

  def down
    remove_column :partidas, :nombre
  end
end
