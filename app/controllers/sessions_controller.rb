class SessionsController < ApplicationController

  def new
    render :login
  end

  def create
    if params[:name]
      if !params[:name].empty?
        session[:name] = params[:name]
        redirect_to '/welcome_page'
      else
        redirect_to '/sessions/new'
      end
    else
      redirect_to '/sessions/new'
    end
  end

  def welcome
    @username = current_user
  end

  def destroy
    if session[:name]
      session[:name] = nil
    end
    render :login
  end

end
