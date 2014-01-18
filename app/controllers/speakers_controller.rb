class SpeakersController < ApplicationController
  respond_to :html

  def create
    @speaker = Speaker.create(speaker_params)
    respond_with @speaker
  end

  private
    def speaker_params
      # params.require(:speaker).permit(:firstname, :lastname, :email, :theme, :summary, :foto)
      params.fetch(:speaker, {}).permit(:firstname, :lastname, :email, :theme, :summary, :foto_attributes => [:image])
    end
end
