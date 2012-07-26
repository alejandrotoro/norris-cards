class CreatePartidas < ActiveRecord::Migration
  def change
    create_table :partidas do |t|
      t.integer :baraja_id
      t.integer :creador_id
      t.integer :ganador_id
      t.date :fecha_fin
      t.integer :cantidad_jugadores

      t.timestamps
    end
  end
end
