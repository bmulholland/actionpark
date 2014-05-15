require_dependency "actionpark/application_controller"

module Actionpark
  class DashboardController < ApplicationController
    def index
      @requests = Request.all
    end
  end
end
