class ApplicationController < ActionController::Base
  include Actionpark::StoreRequests

  protect_from_forgery

  before_filter :store_request

  def current_user
    User.find(1)
  end
end
