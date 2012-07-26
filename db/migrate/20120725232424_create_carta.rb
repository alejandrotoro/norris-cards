class CreateCarta < ActiveRecord::Migration
  def change
    create_table :carta do |t|
      t.integer :id_baraja
      t.string :nombre
      t.string :numeroletra
      t.string :imagen
      t.string :letras
      t.string :colores

      t.timestamps
    end
  end
end
