class Partida < ActiveRecord::Base
  belongs_to :baraja
  has_many :usuario_partida, :class_name => 'UsuarioPartida'
  attr_accessible :baraja_id, :cantidad_jugadores, :creador_id, :fecha_fin, :ganador_id
end
