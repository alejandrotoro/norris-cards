class UsuarioPartida < ActiveRecord::Base
  belongs_to :user
  belongs_to :partida
  attr_accessible :partida_id, :usuario_id
end
