class SpeakersController < ApplicationController
  respond_to :html

  def create
    @speaker = Speaker.new(speaker_params)

    if @speaker.save
      redirect_to :root, flash: { notice: "Thank you for you registration! We will contact you soon!" }
    else
      render :new, status: :unprocessable_entity
    end
    # respond_with @speaker
  end

  private
    def speaker_params
      # params.require(:speaker).permit(:firstname, :lastname, :email, :theme, :summary, :foto)
      params.fetch(:speaker, {}).permit(:firstname, :lastname, :email, :theme, :summary, :foto_attributes => [:image])
    end
end
