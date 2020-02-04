class SessionsController < ApplicationController
	def new
		if !params[:name]
			render 'sessions/new'
		else
			flash[:alert] = "You are already logged in."
			redirect_to "/"
		end
	end
	def create
		if !params[:name].blank?
			session[:name] = params[:name]
			redirect_to "/"
		else 
			flash[:alert] = "You must enter a username."
			redirect_to login_path
		end
	end
	def destroy
		session.delete(:name)
	end

end