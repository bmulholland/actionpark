module Actionpark
  module StoreRequests
    def store_request
      Request.create(
        controller_name: controller_name,
        action_name: action_name,
        #user: current_user
      )
    end
  end
end
