module Actionpark
  class Request < ActiveRecord::Base
    attr_accessible :action_name, :controller_name, :user_id
  end
end
