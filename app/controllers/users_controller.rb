class UsersController < ApplicationController
  def index
    @job = Job.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      redirect_to '/users'
    else
      render :new
    end
  end

  def showme
    @user = User.find(params[:user_id])
  end

  def show
    @user = User.all
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to '/users/show'
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to '/sessions/show'
    else
      render 'edit'
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:uid, :password, :official, :position, :taxcode, :starttime, :duetime)
  end

end
