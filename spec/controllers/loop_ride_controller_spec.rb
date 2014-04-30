require 'spec_helper'

describe LoopRideController do

  describe "GET 'start'" do
    before do
      allow(Actionpark::Request).to receive(:create)
    end

    it "returns http success" do
      get 'start'
      response.should be_success
    end
    it "stores request" do
      expect(Actionpark::Request).to receive(:create)
      get 'start'
    end
  end

  describe "GET 'get_stuck'" do
    it "returns http success" do
      get 'get_stuck'
      response.should be_success
    end
  end

end
