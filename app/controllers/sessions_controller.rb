class SessionsController < ApplicationController

  def new
    session = Session.new
    @user = User.new
  end
  
  def create
    @user = User.find_by uid: params[:user][:uid]
    if (@user.password == params[:user][:password])
      session[:uid] = @user.uid #Session co san
      redirect_to session_path(session)
    elsif
      redirect_to '/sessions/new'
    end
  end
  
  def show
    @user = User.find_by uid: session[:uid]
  end

  def destroy
    session.destroy
    @user = nil
    redirect_to '/sessions/new'
  end

  private
  def session_params
    params.require(:session).permit(:current)
  end
end
