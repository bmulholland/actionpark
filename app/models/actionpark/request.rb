# == Schema Information
#
# Table name: actionpark_requests
#
#  id              :integer          not null, primary key
#  controller_name :string(255)
#  action_name     :string(255)
#  user_id         :integer
#  created_at      :datetime
#

module Actionpark
  class Request < ActiveRecord::Base
    attr_accessible :action_name, :controller_name, :user_id
  end
end
