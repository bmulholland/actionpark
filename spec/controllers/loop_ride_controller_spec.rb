require 'spec_helper'

describe LoopRideController do
  describe "GET 'start'" do
    it "returns http success" do
      get 'start'
      response.should be_success
    end
    it "stores request" do
      expect{get 'start'}.to change{Actionpark::Request.count}.by(1)
    end
    it "stores action name" do
      get "start"
      expect(Actionpark::Request.last.action_name).to eq "start"
    end
    it "stores controller name" do
      get "start"
      expect(Actionpark::Request.last.controller_name).to eq "loop_ride"
    end
    it "stores user id" do
      get "start"
      expect(Actionpark::Request.last.user_id).to eq 1
    end
  end

  describe "GET 'get_stuck'" do
    it "returns http success" do
      get 'get_stuck'
      response.should be_success
    end
  end

end
