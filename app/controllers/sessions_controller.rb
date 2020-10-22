class SessionsController < ApplicationController
    

    def new
        if session[:name]
            redirect_to '/'
        else
            
            redirect_to '/login'
        end
    end

    def create
        if params[:name] == nil
            redirect_to '/login'
        elsif params[:name] == ''
            redirect_to '/login'
        else

            session[:name] = params[:name]

            redirect_to '/'
        end
    end

    def destroy
        session.delete :name 
    end

    
end