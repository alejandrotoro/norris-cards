class UsuarioPartidasController < ApplicationController
  # GET /usuario_partidas
  # GET /usuario_partidas.json
  def index
    @usuario_partidas = UsuarioPartida.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @usuario_partidas }
    end
  end

  # GET /usuario_partidas/1
  # GET /usuario_partidas/1.json
  def show
    @usuario_partida = UsuarioPartida.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @usuario_partida }
    end
  end

  # GET /usuario_partidas/new
  # GET /usuario_partidas/new.json
  def new
    @usuario_partida = UsuarioPartida.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @usuario_partida }
    end
  end

  # GET /usuario_partidas/1/edit
  def edit
    @usuario_partida = UsuarioPartida.find(params[:id])
  end

  # POST /usuario_partidas
  # POST /usuario_partidas.json
  def create
    @usuario_partida = UsuarioPartida.new(params[:usuario_partida])
    @partida = Partida.find(params[:usuario_partida][:partida_id])
    
    respond_to do |format|
      if @partida.cantidad_jugadores > UsuarioPartida.where(:partida_id => params[:usuario_partida][:partida_id]).count
        if @usuario_partida.save
          format.html { redirect_to @usuario_partida, notice: 'Usuario partida was successfully created.' }
          format.json { render json: @usuario_partida, status: :created, location: @usuario_partida }
        else
          format.html { render action: "new" }
          format.json { render json: @usuario_partida.errors, status: :unprocessable_entity }
        end
      else  
        format.html { render action: "new" }
        format.json { render json: @usuario_partida.errors, status: :unprocessable_entity, notice: 'Lo sentimos, la partida está completa.' }
      end
    end
  end

  # PUT /usuario_partidas/1
  # PUT /usuario_partidas/1.json
  def update
    @usuario_partida = UsuarioPartida.find(params[:id])

    respond_to do |format|
      if @usuario_partida.update_attributes(params[:usuario_partida])
        format.html { redirect_to @usuario_partida, notice: 'Usuario partida was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @usuario_partida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuario_partidas/1
  # DELETE /usuario_partidas/1.json
  def destroy
    @usuario_partida = UsuarioPartida.find(params[:id])
    @usuario_partida.destroy

    respond_to do |format|
      format.html { redirect_to usuario_partidas_url }
      format.json { head :no_content }
    end
  end
end
