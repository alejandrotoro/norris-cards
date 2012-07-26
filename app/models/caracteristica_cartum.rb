class CaracteristicaCartum < ActiveRecord::Base
  belongs_to :cartum
  belongs_to :caracteristica
  attr_accessible :caracterisitca_id, :carta_id, :valor
end
