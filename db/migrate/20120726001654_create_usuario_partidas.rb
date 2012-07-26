class CreateUsuarioPartidas < ActiveRecord::Migration
  def change
    create_table :usuario_partidas do |t|
      t.integer :partida_id
      t.integer :usuario_id

      t.timestamps
    end
  end
end
