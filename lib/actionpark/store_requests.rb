module Actionpark
  module StoreRequests
    def store_request
      Request.create(
        controller: controller_name,
        action: action_name,
        user: current_user
      )
    end
  end
end
