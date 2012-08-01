class Baraja < ActiveRecord::Base
  has_many :cartums
  attr_accessible :edicion, :imagen, :nombre, :url_icono
end
