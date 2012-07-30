class AgregarUnidadMedidaTablaCaracteristicas < ActiveRecord::Migration
  def up
    add_column :caracteristicas, :unidad_medida, :string
  end

  def down
    remove_column :caracteristicas, :unidad_medida
  end
end
