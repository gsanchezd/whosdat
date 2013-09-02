class ApplicationController < ActionController::Base
  protect_from_forgery

  around_filter :append_event_tracking_tags

  # optionally identify users
  # def mixpanel_distinct_id
  #   current_visitor_id
  # end

  def mixpanel_name_tag
    current_user && current_user.email
  end

  def kissmetrics_identity
    current_user && current_user.email
  end

  private
  def mobile_device?
    request.env["HTTP_USER_AGENT"].try :match, /(iphone|ipod|android)/i
  end
  helper_method :mobile_device?


end
