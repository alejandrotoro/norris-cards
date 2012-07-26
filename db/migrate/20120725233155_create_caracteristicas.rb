class CreateCaracteristicas < ActiveRecord::Migration
  def change
    create_table :caracteristicas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
