class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      render json: {msg: user}
    else
      render json: {msg: 'not working'}
  
      
    end
  end

  def destroy
    session[:user_id] = nil 
    render json:  {msg: session[:user_id]}
  end
end
