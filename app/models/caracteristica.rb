class Caracteristica < ActiveRecord::Base
  has_many :caracteristicas_carta, :class_name => 'CaracteristicaCartum'
  attr_accessible :nombre
end
