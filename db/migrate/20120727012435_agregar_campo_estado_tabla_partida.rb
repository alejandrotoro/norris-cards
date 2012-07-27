class AgregarCampoEstadoTablaPartida < ActiveRecord::Migration
  def up
    add_column :partidas, :estado, :boolean, :default => false
  end

  def down
    remove_column :partidas, :estado
  end
end
