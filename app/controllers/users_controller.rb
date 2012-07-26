class UsersController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @users = User.all

    respond_to do |format|
      format.html
      format.json { render json: @users }
    end
  end
  
  def show
    @user = User.find(params[:id])
    respond_to do |format|
      format.html
      format.json  { render :json => @user }
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:baraja])
        format.html { redirect_to @user, notice: 'Baraja was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
  
  def dashboard
    @user = current_user
  end
  
end