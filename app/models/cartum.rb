class Cartum < ActiveRecord::Base
  belongs_to :baraja
  has_many :caracteristicas_carta, :class_name => 'CaracteristicaCartum'
  attr_accessible :colores, :id_baraja, :imagen_small, :imagen_big, :letras, :nombre, :numeroletra
end
