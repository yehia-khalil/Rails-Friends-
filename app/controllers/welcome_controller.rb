class WelcomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @name = current_user.email
  end
end
