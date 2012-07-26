class Baraja < ActiveRecord::Base
  has_many :cartums
  attr_accessible :edicion, :imagen, :nombre
end
