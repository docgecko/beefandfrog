require "spec_helper"

describe PortraitsController do
  describe "routing" do

    it "routes to #index" do
      get("/portraits").should route_to("portraits#index")
    end

    it "routes to #new" do
      get("/portraits/new").should route_to("portraits#new")
    end

    it "routes to #show" do
      get("/portraits/1").should route_to("portraits#show", :id => "1")
    end

    it "routes to #edit" do
      get("/portraits/1/edit").should route_to("portraits#edit", :id => "1")
    end

    it "routes to #create" do
      post("/portraits").should route_to("portraits#create")
    end

    it "routes to #update" do
      put("/portraits/1").should route_to("portraits#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/portraits/1").should route_to("portraits#destroy", :id => "1")
    end

  end
end
