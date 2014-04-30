require 'spec_helper'

describe LoopRideController do

  describe "GET 'start'" do
    it "returns http success" do
      get 'start'
      response.should be_success
    end
  end

  describe "GET 'get_stuck'" do
    it "returns http success" do
      get 'get_stuck'
      response.should be_success
    end
  end

end
