class CaracteristicasController < ApplicationController
  # GET /caracteristicas
  # GET /caracteristicas.json
  def index
    @caracteristicas = Caracteristica.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @caracteristicas }
    end
  end

  # GET /caracteristicas/1
  # GET /caracteristicas/1.json
  def show
    @caracteristica = Caracteristica.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @caracteristica }
    end
  end

  # GET /caracteristicas/new
  # GET /caracteristicas/new.json
  def new
    @caracteristica = Caracteristica.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @caracteristica }
    end
  end

  # GET /caracteristicas/1/edit
  def edit
    @caracteristica = Caracteristica.find(params[:id])
  end

  # POST /caracteristicas
  # POST /caracteristicas.json
  def create
    @caracteristica = Caracteristica.new(params[:caracteristica])

    respond_to do |format|
      if @caracteristica.save
        format.html { redirect_to @caracteristica, notice: 'Caracteristica was successfully created.' }
        format.json { render json: @caracteristica, status: :created, location: @caracteristica }
      else
        format.html { render action: "new" }
        format.json { render json: @caracteristica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /caracteristicas/1
  # PUT /caracteristicas/1.json
  def update
    @caracteristica = Caracteristica.find(params[:id])

    respond_to do |format|
      if @caracteristica.update_attributes(params[:caracteristica])
        format.html { redirect_to @caracteristica, notice: 'Caracteristica was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @caracteristica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caracteristicas/1
  # DELETE /caracteristicas/1.json
  def destroy
    @caracteristica = Caracteristica.find(params[:id])
    @caracteristica.destroy

    respond_to do |format|
      format.html { redirect_to caracteristicas_url }
      format.json { head :no_content }
    end
  end
end
