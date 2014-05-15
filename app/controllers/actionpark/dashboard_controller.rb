require_dependency "actionpark/application_controller"

module Actionpark
  class DashboardController < ApplicationController
    def index
      conditions = {}

      conditions[:user_id] = params[:user_id] if params[:user_id]

      @requests = Request.where(conditions).limit(100).all
    end
  end
end
