class QuitarNuloFechasUsuarioCarta < ActiveRecord::Migration
  def up
    change_column :usuario_carta, :created_at, :date, :null => true
    change_column :usuario_carta, :updated_at, :date, :null => true
  end

  def down
    change_column :usuario_carta, :created_at, :date, :null => false
    change_column :usuario_carta, :updated_at, :date, :null => false
  end
end
