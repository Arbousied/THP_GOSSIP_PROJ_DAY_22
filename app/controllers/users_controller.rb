class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
  @user = User.new(email: params[:email], password: params[:password],first_name: params[:first_name], last_name: params[:last_name], description: params[:description], age: params[:age], city_id: City.all.sample.id)
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end
end
