class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  config.exceptions_app = ->(env) { ExceptionController.action(:show).call(env) }
end
