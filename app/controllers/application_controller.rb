class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  # Include it in the controllers (e.g. application_controller.rb)
include Pagy::Backend


end
