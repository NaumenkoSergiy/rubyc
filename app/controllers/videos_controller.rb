class VideosController < ApplicationController
  before_filter :authenticate_visitor!

  def index

  end
end
