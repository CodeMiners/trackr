class WelcomeController < ApplicationController
	skip_before_action :authenticate_user!, only: :index
	
  def index
  	redirect_to user_today_path(current_user) if current_user
  end
end
