class SpeakersController < ApplicationController
  respond_to :html

  def create
    @speaker = Speaker.create(speaker_params)
    respond_with @speaker
  end

  private
    def speaker_params
      params.permit(:firstname, :lastname, :email, :theme, :summary)

    end
end
