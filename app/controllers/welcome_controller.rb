class WelcomeController < ApplicationController
  def index
    @speakers = Speaker.approved.all
  end
end
