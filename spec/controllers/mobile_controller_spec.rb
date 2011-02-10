require 'spec_helper'

describe MobileController do

  describe "GET 'activate'" do
    it "should be successful" do
      get 'activate'
      response.should be_success
    end
  end

  describe "GET 'signal'" do
    it "should be successful" do
      get 'signal'
      response.should be_success
    end
  end

  describe "GET 'check'" do
    it "should be successful" do
      get 'check'
      response.should be_success
    end
  end

end
