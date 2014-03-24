class WelcomeController < ApplicationController
  def index
    @speakers = Speaker.approved.order(:position)
  end
end
