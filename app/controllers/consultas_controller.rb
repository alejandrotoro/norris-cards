class ConsultasController < ApplicationController
  
  def consultas
  	sql = ActiveRecord::Base.connection()
  	@consulta = sql.execute("INSERT INTO carta (id, id_baraja, nombre, numeroletra, letras, colores, created_at, updated_at, imagen_small, imagen_big) VALUES 

    (2, 1, 'Kenworth', '2A', '3', '3', '2012-07-26 21:00:56.125888', '2012-07-26 21:00:56.125888', '/assets/cards/camiones/2a.png', '/assets/cards/camiones/2a.png'),
    (3, 1, 'Ford 9000', '3A', '3', '3', '2012-07-26 21:00:56.125888', '2012-07-26 21:00:56.125888', '/assets/cards/camiones/3a.png', '/assets/cards/camiones/3a.png'),
    (4, 1, 'Ford Offroad Racer', '4A', '3', '3', '2012-07-26 21:00:56.125888', '2012-07-26 21:00:56.125888', '/assets/cards/camiones/4a.png', '/assets/cards/camiones/4a.png'),
    (5, 1, 'Phoenix MAN', '5A', '1', '3', '2012-07-26 21:00:56.125888', '2012-07-26 21:00:56.125888', '/assets/cards/camiones/5a.png', '/assets/cards/camiones/5a.png'),
    (6, 1, 'Kenworth-Dragster', '6A', '5', '3', '2012-07-26 21:00:56.125888', '2012-07-26 21:00:56.125888', '/assets/cards/camiones/6a.png', '/assets/cards/camiones/6a.png'),
    (7, 1, 'Scania R 143/470', '7A', '1', '2', '2012-07-26 21:00:56.125888', '2012-07-26 21:00:56.125888', '/assets/cards/camiones/7a.png', '/assets/cards/camiones/7a.png'),
    (8, 1, 'Dodge Detroit', '8A', '3', '3', '2012-07-26 21:00:56.125888', '2012-07-26 21:00:56.125888', '/assets/cards/camiones/8a.png', '/assets/cards/camiones/8a.png'),


    (9, 1, 'Freightliner Penske Special', '1B', '3', '3', '2012-07-26 21:00:56.125888', '2012-07-26 21:00:56.125888', '/assets/cards/camiones/1b.png', '/assets/cards/camiones/1b.png'),
    (10, 1, 'Ford Power Wagon', '2B', '3', '3', '2012-07-26 21:00:56.125888', '2012-07-26 21:00:56.125888', '/assets/cards/camiones/2b.png', '/assets/cards/camiones/2b.png'),
    (11, 1, 'White/GMC', '3B', '3', '3', '2012-07-26 21:00:56.125888', '2012-07-26 21:00:56.125888', '/assets/cards/camiones/3b.png', '/assets/cards/camiones/3b.png'),
    (12, 1, 'Mack-Maxidyne 300', '4B', '3', '3', '2012-07-26 21:00:56.125888', '2012-07-26 21:00:56.125888', '/assets/cards/camiones/4b.png', '/assets/cards/camiones/4b.png'),
    (13, 1, 'Kenworth Aero', '5B', '3', '3', '2012-07-26 21:00:56.125888', '2012-07-26 21:00:56.125888', '/assets/cards/camiones/5b.png', '/assets/cards/camiones/5b.png'),
    (14, 1, 'Detroit Diesel Double D', '6B', '3', '3', '2012-07-26 21:00:56.125888', '2012-07-26 21:00:56.125888', '/assets/cards/camiones/6b.png', '/assets/cards/camiones/6b.png'),
    (15, 1, 'Western Star', '7B', '3', '3', '2012-07-26 21:00:56.125888', '2012-07-26 21:00:56.125888', '/assets/cards/camiones/7b.png', '/assets/cards/camiones/7b.png'),
    (16, 1, 'Western Big Shunt', '8B', '3', '3', '2012-07-26 21:00:56.125888', '2012-07-26 21:00:56.125888', '/assets/cards/camiones/8b.png', '/assets/cards/camiones/8b.png'),


    (17, 1, 'Autocar', '1C', '3', '3', '2012-07-26 21:00:56.125888', '2012-07-26 21:00:56.125888', '/assets/cards/camiones/1c.png', '/assets/cards/camiones/1c.png'),
    (18, 1, 'Kenworth Detroit', '2C', '3', '3', '2012-07-26 21:00:56.125888', '2012-07-26 21:00:56.125888', '/assets/cards/camiones/2c.png', '/assets/cards/camiones/2c.png'),
    (19, 1, 'Kenworth', '3C', '3', '3', '2012-07-26 21:00:56.125888', '2012-07-26 21:00:56.125888', '/assets/cards/camiones/3c.png', '/assets/cards/camiones/3c.png'),
    (20, 1, 'VW-Wheelstander', '4C', '3', '3', '2012-07-26 21:00:56.125888', '2012-07-26 21:00:56.125888', '/assets/cards/camiones/4c.png', '/assets/cards/camiones/4c.png'),
    (21, 1, 'MAN 19.422 UXT', '5C', '1', '3', '2012-07-26 21:00:56.125888', '2012-07-26 21:00:56.125888', '/assets/cards/camiones/5c.png', '/assets/cards/camiones/5c.png'),
    (22, 1, 'DF 2800', '6C', '2', '3', '2012-07-26 21:00:56.125888', '2012-07-26 21:00:56.125888', '/assets/cards/camiones/6c.png', '/assets/cards/camiones/6c.png'),
    (23, 1, 'Kenworth', '7C', '3', '3', '2012-07-26 21:00:56.125888', '2012-07-26 21:00:56.125888', '/assets/cards/camiones/7c.png', '/assets/cards/camiones/7c.png'),
    (24, 1, 'GMC', '8C', '3', '3', '2012-07-26 21:00:56.125888', '2012-07-26 21:00:56.125888', '/assets/cards/camiones/8c.png', '/assets/cards/camiones/8c.png'),


    (25, 1, 'Kenworth Custom', '1D', '3', '3', '2012-07-26 21:00:56.125888', '2012-07-26 21:00:56.125888', '/assets/cards/camiones/1d.png', '/assets/cards/camiones/1d.png'),
    (26, 1, 'Freightliner Special', '2D', '3', '3', '2012-07-26 21:00:56.125888', '2012-07-26 21:00:56.125888', '/assets/cards/camiones/2d.png', '/assets/cards/camiones/2d.png'),
    (27, 1, 'Volvo F10', '3D', '1', '2', '2012-07-26 21:00:56.125888', '2012-07-26 21:00:56.125888', '/assets/cards/camiones/3d.png', '/assets/cards/camiones/3d.png'),
    (28, 1, 'Mack', '4D', '3', '3', '2012-07-26 21:00:56.125888', '2012-07-26 21:00:56.125888', '/assets/cards/camiones/4d.png', '/assets/cards/camiones/4d.png'),
    (29, 1, 'Mercedes 1450 LS', '5D', '1', '3', '2012-07-26 21:00:56.125888', '2012-07-26 21:00:56.125888', '/assets/cards/camiones/5d.png', '/assets/cards/camiones/5d.png'),
    (30, 1, 'Ford', '6D', '2', '3', '2012-07-26 21:00:56.125888', '2012-07-26 21:00:56.125888', '/assets/cards/camiones/6d.png', '/assets/cards/camiones/6d.png'),
    (31, 1, 'GMC', '7D', '3', '3', '2012-07-26 21:00:56.125888', '2012-07-26 21:00:56.125888', '/assets/cards/camiones/7d.png', '/assets/cards/camiones/7d.png'),
    (32, 1, 'Mack-Delo 400', '8D', '3', '3', '2012-07-26 21:00:56.125888', '2012-07-26 21:00:56.125888', '/assets/cards/camiones/8d.png', '/assets/cards/camiones/8d.png');


    ")
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @consulta }
    end
  end
  
end
