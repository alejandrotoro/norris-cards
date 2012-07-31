class AgregarCampoUrlIconoTablaBarajas < ActiveRecord::Migration
  def up
    add_column :barajas, :url_icono, :string
  end

  def down
    remove_column :barajas, :url_icono
  end
end
