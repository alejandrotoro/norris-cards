class AgregarCampoUrlIconoABarajas < ActiveRecord::Migration
  def up
    add_column :partidas, :url_icono, :string
  end

  def down
    remove_column :partidas, :url_icono
  end
end
