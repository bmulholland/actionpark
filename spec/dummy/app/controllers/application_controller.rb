class ApplicationController < ActionController::Base
  include Actionpark::StoreRequests

  protect_from_forgery

  before_filter :store_request
end
