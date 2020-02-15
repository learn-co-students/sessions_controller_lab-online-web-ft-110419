class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def name_from_params
    if params[:name] && !params[:name].empty?
     params[:name]
    end
  end
end