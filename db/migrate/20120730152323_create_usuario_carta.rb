class CreateUsuarioCarta < ActiveRecord::Migration
  def change
    create_table :usuario_carta do |t|
      t.integer :partida_id
      t.integer :usuario_id
      t.integer :carta_id
      t.integer :orden

      t.timestamps
    end
  end
end
