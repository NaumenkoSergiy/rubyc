When /^I submit New Speaker form$/ do
  speaker = FactoryGirl.build(:speaker)
  within '#new_speaker' do
    fill_in 'speaker_firstname', with: speaker.firstname
    fill_in 'speaker_lastname',  with: speaker.lastname
    fill_in 'speaker_email',     with: speaker.email
    fill_in 'speaker_theme',     with: speaker.theme
    fill_in 'speaker_summary',   with: speaker.summary
    attach_file('speaker_foto_attributes_image', 'spec/files/foto.jpg')
    click_button 'Become a speaker'
  end
  save_and_open_page
end
