class SessionsController < ApplicationController
  
  def index
    session[:session_hello] ||= "Adeline was here"
    cookies[:cookies_hello] ||= "Adeline was here"
    render json: { session: session, cookies: cookies.to_hash }
  end

end
