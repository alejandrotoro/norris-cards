class CaracteristicaCartaController < ApplicationController
  # GET /caracteristica_carta
  # GET /caracteristica_carta.json
  def index
    @caracteristica_carta = CaracteristicaCartum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @caracteristica_carta }
    end
  end

  # GET /caracteristica_carta/1
  # GET /caracteristica_carta/1.json
  def show
    @caracteristica_cartum = CaracteristicaCartum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @caracteristica_cartum }
    end
  end

  # GET /caracteristica_carta/new
  # GET /caracteristica_carta/new.json
  def new
    @caracteristica_cartum = CaracteristicaCartum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @caracteristica_cartum }
    end
  end

  # GET /caracteristica_carta/1/edit
  def edit
    @caracteristica_cartum = CaracteristicaCartum.find(params[:id])
  end

  # POST /caracteristica_carta
  # POST /caracteristica_carta.json
  def create
    @caracteristica_cartum = CaracteristicaCartum.new(params[:caracteristica_cartum])

    respond_to do |format|
      if @caracteristica_cartum.save
        format.html { redirect_to @caracteristica_cartum, notice: 'Caracteristica cartum was successfully created.' }
        format.json { render json: @caracteristica_cartum, status: :created, location: @caracteristica_cartum }
      else
        format.html { render action: "new" }
        format.json { render json: @caracteristica_cartum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /caracteristica_carta/1
  # PUT /caracteristica_carta/1.json
  def update
    @caracteristica_cartum = CaracteristicaCartum.find(params[:id])

    respond_to do |format|
      if @caracteristica_cartum.update_attributes(params[:caracteristica_cartum])
        format.html { redirect_to @caracteristica_cartum, notice: 'Caracteristica cartum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @caracteristica_cartum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caracteristica_carta/1
  # DELETE /caracteristica_carta/1.json
  def destroy
    @caracteristica_cartum = CaracteristicaCartum.find(params[:id])
    @caracteristica_cartum.destroy

    respond_to do |format|
      format.html { redirect_to caracteristica_carta_url }
      format.json { head :no_content }
    end
  end
end
