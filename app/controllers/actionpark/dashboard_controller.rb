require_dependency "actionpark/application_controller"

module Actionpark
  class DashboardController < ApplicationController
    def index
      @requests = Request.limit(100).all
    end
  end
end
