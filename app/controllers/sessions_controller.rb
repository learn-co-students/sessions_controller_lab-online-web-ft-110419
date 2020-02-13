class SessionsController < ApplicationController

    def new 
        
    end 

    def create
        if session[:name].nil?
            redirect_to login_url
            if params[:name]
                session[:name] = params[:name]
                if !!session[:name]
                end
            end
        else 
        end 
    
    end 

    def destroy

    end 
end