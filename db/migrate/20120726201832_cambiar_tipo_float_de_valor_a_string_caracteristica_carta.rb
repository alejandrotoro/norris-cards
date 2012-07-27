class CambiarTipoFloatDeValorAStringCaracteristicaCarta < ActiveRecord::Migration
  def up
    change_column :caracteristica_carta, :valor, :string
  end

  def down
    change_column :caracteristica_carta, :valor, :float
  end
end
