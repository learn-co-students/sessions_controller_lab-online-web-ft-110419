class SessionsController < ApplicationController
  helper_method :logged_in?
  
  def new

  end

  def create
    if !params[:name].blank? && !params[:name].nil?
      session[:name] = params[:name]
      if logged_in?
        redirect_to root_path
      end
    else 
      redirect_to sessions_new_path
    end
  end

  def destroy
    if logged_in?
      session.delete :name
    end
  end

  def logged_in?
    !!session[:name]
  end

end
