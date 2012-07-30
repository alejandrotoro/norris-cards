class AgregarCampoUsuariosTablaUsers < ActiveRecord::Migration
  def up
    add_column :users, :usuario, :string
  end

  def down
    remove_column :users, :usuario
  end
end
