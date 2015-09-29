RailsAdmin.config do |config|
 # Devise integration
 config.authenticate_with do
 warden.authenticate! scope: :user
 end
 config.current_user_method(&:current_user)
 # Custom title
 # One alternative
 config.main_app_name = ["Cool app", "BackOffice"]
 # or something more dynamic
 config.main_app_name = Proc.new { |controller| [ "Cool app",
"BackOffice - #{controller.params[:action].try(:titleize)}" ] }
end