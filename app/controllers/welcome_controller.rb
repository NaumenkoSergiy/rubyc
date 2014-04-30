class WelcomeController < ApplicationController
  def index
    @speakers = Speaker.approved.order(:position)
    @posts =    Post.published.recent
  end
end
