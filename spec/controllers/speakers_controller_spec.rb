require 'spec_helper'

describe SpeakersController do
  describe :create do
    before{ post :create, form_data }

    context 'invalid form data' do
      let(:form_data){ {} }

      it { expect(response.status).to eq 422 }

    end

    context 'valid form data' do
      let(:form_data) do
        {
          speaker: {
            firstname: Faker::Name.first_name,
            lastname:  Faker::Name.last_name,
            email:     Faker::Internet.email,
            theme:     Faker::Lorem.sentence,
            summary:   Faker::Lorem.paragraph,
            foto_attributes: {
              image:   Rack::Test::UploadedFile.new(Rails.root.join("spec/files/foto.jpg"))
            }
          }
        }
      end

      # move to shared examples of create action
      it { expect(assigns(:speaker)).to     be_persisted }

      it { expect(assigns(:speaker)).not_to be_approved }
    end
  end

end
