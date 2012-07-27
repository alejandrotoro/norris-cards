class CartaController < ApplicationController
  # GET /carta
  # GET /carta.json
  def index
    @carta = Cartum.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @carta }
    end
  end

  # GET /carta/1
  # GET /carta/1.json
  def show
    @cartum = Cartum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cartum }
    end
  end

  # GET /carta/new
  # GET /carta/new.json
  def new
    @cartum = Cartum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cartum }
    end
  end

  # GET /carta/1/edit
  def edit
    @cartum = Cartum.find(params[:id])
  end

  # POST /carta
  # POST /carta.json
  def create
    @cartum = Cartum.new(params[:cartum])

    respond_to do |format|
      if @cartum.save
        format.html { redirect_to @cartum, notice: 'Cartum was successfully created.' }
        format.json { render json: @cartum, status: :created, location: @cartum }
      else
        format.html { render action: "new" }
        format.json { render json: @cartum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /carta/1
  # PUT /carta/1.json
  def update
    @cartum = Cartum.find(params[:id])

    respond_to do |format|
      if @cartum.update_attributes(params[:cartum])
        format.html { redirect_to @cartum, notice: 'Cartum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cartum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carta/1
  # DELETE /carta/1.json
  def destroy
    @cartum = Cartum.find(params[:id])
    @cartum.destroy

    respond_to do |format|
      format.html { redirect_to carta_url }
      format.json { head :no_content }
    end
  end
end
