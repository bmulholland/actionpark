class ApplicationController < ActionController::Base
  include Actionpark::StoreRequests

  protect_from_forgery

  after_filter :store_requests
end
