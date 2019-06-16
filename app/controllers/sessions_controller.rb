class SessionsController < ApplicationController
  def new
  end

  def create
        if params[:name].blank?
          redirect_to sessions_new_path
        else
        session[:name] = params[:name]
        redirect_to root_path
      end
  end

  def destroy
      reset_session
      redirect_to root_path
  end
end
