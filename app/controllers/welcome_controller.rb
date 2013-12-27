class WelcomeController < ApplicationController
  def index
    @speakers = Speaker.all
  end
end
