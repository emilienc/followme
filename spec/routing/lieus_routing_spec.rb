require "spec_helper"

describe LieusController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/lieus" }.should route_to(:controller => "lieus", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/lieus/new" }.should route_to(:controller => "lieus", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/lieus/1" }.should route_to(:controller => "lieus", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/lieus/1/edit" }.should route_to(:controller => "lieus", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/lieus" }.should route_to(:controller => "lieus", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/lieus/1" }.should route_to(:controller => "lieus", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/lieus/1" }.should route_to(:controller => "lieus", :action => "destroy", :id => "1")
    end

  end
end
