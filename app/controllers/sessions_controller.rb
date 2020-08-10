class SessionsController < ApplicationController

  def new
    session = Session.new
    @user = User.new
  end
  
  def create
    if ((params[:user][:uid] != nil) && (params[:user][:password] != nil))
      @user = User.find_by uid: params[:user][:uid]
      if ((@user != nil) && (@user.password == params[:user][:password]))
        session[:uid] = @user.uid #Session co san
        redirect_to session_path(session)
      end
    else
    render :new
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
