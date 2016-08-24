class SecretsController < ApplicationController

  def show
    if current_user
      render :secret
    else
      redirect_to '/sessions/new'
    end
  end


end
