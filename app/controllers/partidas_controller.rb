class PartidasController < ApplicationController
  # GET /partidas
  # GET /partidas.json
  def index
    @partidas = Partida.where(:estado => false)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @partidas }
    end
  end

  # GET /partidas/1
  # GET /partidas/1.json
  def show
    @partida = Partida.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @partida }
    end
  end

  # GET /partidas/new
  # GET /partidas/new.json
  def new
    @partida = Partida.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @partida }
    end
  end

  # GET /partidas/1/edit
  def edit
    @partida = Partida.find(params[:id])
  end

  # POST /partidas
  # POST /partidas.json
  def create
    @partida = Partida.new(params[:partida])

    respond_to do |format|
      if @partida.save
        format.html { redirect_to @partida, notice: 'Partida was successfully created.' }
        format.json { render json: @partida, status: :created, location: @partida }
      else
        format.html { render action: "new" }
        format.json { render json: @partida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /partidas/1
  # PUT /partidas/1.json
  def update
    @partida = Partida.find(params[:id])

    respond_to do |format|
      if @partida.update_attributes(params[:partida])
        format.html { redirect_to @partida, notice: 'Partida was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @partida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partidas/1
  # DELETE /partidas/1.json
  def destroy
    @partida = Partida.find(params[:id])
    @partida.destroy

    respond_to do |format|
      format.html { redirect_to partidas_url }
      format.json { head :no_content }
    end
  end
end
