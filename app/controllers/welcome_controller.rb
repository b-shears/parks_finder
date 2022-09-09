class WelcomeController < ApplicationController
  def index
    cookies[:secret_message] ||= "cookies are delicious"
  end
end
