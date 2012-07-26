class BarajasController < ApplicationController
  # GET /barajas
  # GET /barajas.json
  def index
    @barajas = Baraja.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @barajas }
    end
  end

  # GET /barajas/1
  # GET /barajas/1.json
  def show
    @baraja = Baraja.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @baraja }
    end
  end

  # GET /barajas/new
  # GET /barajas/new.json
  def new
    @baraja = Baraja.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @baraja }
    end
  end

  # GET /barajas/1/edit
  def edit
    @baraja = Baraja.find(params[:id])
  end

  # POST /barajas
  # POST /barajas.json
  def create
    @baraja = Baraja.new(params[:baraja])

    respond_to do |format|
      if @baraja.save
        format.html { redirect_to @baraja, notice: 'Baraja was successfully created.' }
        format.json { render json: @baraja, status: :created, location: @baraja }
      else
        format.html { render action: "new" }
        format.json { render json: @baraja.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /barajas/1
  # PUT /barajas/1.json
  def update
    @baraja = Baraja.find(params[:id])

    respond_to do |format|
      if @baraja.update_attributes(params[:baraja])
        format.html { redirect_to @baraja, notice: 'Baraja was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @baraja.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barajas/1
  # DELETE /barajas/1.json
  def destroy
    @baraja = Baraja.find(params[:id])
    @baraja.destroy

    respond_to do |format|
      format.html { redirect_to barajas_url }
      format.json { head :no_content }
    end
  end
end
