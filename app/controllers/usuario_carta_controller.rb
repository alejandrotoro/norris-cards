class UsuarioCartaController < ApplicationController
  # GET /usuario_carta
  # GET /usuario_carta.json
  def index
    @usuario_carta = UsuarioCartum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @usuario_carta }
    end
  end

  # GET /usuario_carta/1
  # GET /usuario_carta/1.json
  def show
    @usuario_cartum = UsuarioCartum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @usuario_cartum }
    end
  end

  # GET /usuario_carta/new
  # GET /usuario_carta/new.json
  def new
    @usuario_cartum = UsuarioCartum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @usuario_cartum }
    end
  end

  # GET /usuario_carta/1/edit
  def edit
    @usuario_cartum = UsuarioCartum.find(params[:id])
  end

  # POST /usuario_carta
  # POST /usuario_carta.json
  def create
    @usuario_cartum = UsuarioCartum.new(params[:usuario_cartum])

    respond_to do |format|
      if @usuario_cartum.save
        format.html { redirect_to @usuario_cartum, notice: 'Usuario cartum was successfully created.' }
        format.json { render json: @usuario_cartum, status: :created, location: @usuario_cartum }
      else
        format.html { render action: "new" }
        format.json { render json: @usuario_cartum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /usuario_carta/1
  # PUT /usuario_carta/1.json
  def update
    @usuario_cartum = UsuarioCartum.find(params[:id])

    respond_to do |format|
      if @usuario_cartum.update_attributes(params[:usuario_cartum])
        format.html { redirect_to @usuario_cartum, notice: 'Usuario cartum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @usuario_cartum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuario_carta/1
  # DELETE /usuario_carta/1.json
  def destroy
    @usuario_cartum = UsuarioCartum.find(params[:id])
    @usuario_cartum.destroy

    respond_to do |format|
      format.html { redirect_to usuario_carta_url }
      format.json { head :no_content }
    end
  end
end
