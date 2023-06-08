LetterOpener.configure do |config|
    config.location = Rails.root.join('tmp', 'my_mails')
    config.message_template = :light
    config.file_uri_scheme = 'file://///wsl$/Ubuntu-18.04'
  end
  