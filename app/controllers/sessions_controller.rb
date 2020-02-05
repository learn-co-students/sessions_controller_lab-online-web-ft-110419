class SessionsController < ApplicationController
    def new 
    end 

    def create
        if params[:name].blank? 
            redirect_to login_path
        else 
            session[:name] = params[:name]
            redirect_to root_path
        end 

        #         return redirect_to(controller: 'sessions',
        #         action: 'new') if !params[:name] || params[:name].empty?
        # session[:name] = params[:name]
        # redirect_to controller: 'application', action: 'hello'
    end 

    def destroy 
        session.delete :name
    end 
end 