class CreateBarajas < ActiveRecord::Migration
  def change
    create_table :barajas do |t|
      t.string :nombre
      t.string :imagen
      t.string :edicion

      t.timestamps
    end
  end
end
