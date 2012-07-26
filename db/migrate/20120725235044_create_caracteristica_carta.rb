class CreateCaracteristicaCarta < ActiveRecord::Migration
  def change
    create_table :caracteristica_carta do |t|
      t.integer :carta_id
      t.integer :caracterisitca_id
      t.float :valor

      t.timestamps
    end
  end
end
