class SessionsController < ApplicationController

  def new
    session = Session.new
    @user = User.new
  end
  
  def create
    if ((params[:uid] == nil) or (params[:password] == nil))
      render :new
    else
      @user = User.find_by uid: params[:uid]
      if @user == nil
        render :new
      elsif (@user.password == params[:password])
        session[:uid] = @user.uid #Session co san
        redirect_to session_path(session)
      else
        render :new
      end
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
