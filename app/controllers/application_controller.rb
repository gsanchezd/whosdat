class ApplicationController < ActionController::Base
  protect_from_forgery

  private
  def mobile_device?
    request.env["HTTP_USER_AGENT"].try :match, /(iphone|ipod|android)/i
  end
  helper_method :mobile_device?

end
