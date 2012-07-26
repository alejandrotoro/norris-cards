class Cartum < ActiveRecord::Base
  belongs_to :baraja
  has_many :caracteristicas_carta, :class_name => 'CaracteristicaCartum'
  attr_accessible :colores, :id_baraja, :imagen, :letras, :nombre, :numeroletra
end
