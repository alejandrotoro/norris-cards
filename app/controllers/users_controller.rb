class UsersController < ApplicationController
  before_filter :authenticate_user!
  
  def show
    puts "params-------#{params}"
    @user = User.find(params[:id])
    puts "user------#{@user.to_json}"
    respond_to do |format|
      format.json  { render :json => @user }
    end
  end
  
  def index
    @users = User.all
    respond_to do |format|
      format.json  { render :json => @users }
    end
  end

end