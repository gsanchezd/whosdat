# app/controllers/registrations_controller.rb
class User::RegistrationsController < Devise::RegistrationsController
  def new
    super
    track_event "Starts sign up"
  end

  def create
    super
    if resource.persisted?
      track_event "Signed up"
    end
  end

end 