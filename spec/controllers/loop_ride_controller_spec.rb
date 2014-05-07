require 'spec_helper'

describe LoopRideController do
  before do
    #allow(controller).to receive(current_user)
  end

  describe "GET 'start'" do
    it "returns http success" do
      get 'start'
      response.should be_success
    end
    it "stores request" do
      expect{get 'start'}.to change{Actionpark::Request.count}.by(1)
    end
  end

  describe "GET 'get_stuck'" do
    it "returns http success" do
      get 'get_stuck'
      response.should be_success
    end
  end

end
