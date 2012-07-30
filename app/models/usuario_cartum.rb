class UsuarioCartum < ActiveRecord::Base
  attr_accessible :carta_id, :orden, :partida_id, :usuario_id
end
