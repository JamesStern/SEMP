require "spec_helper"

describe AppformsController do
  describe "routing" do

    it "routes to #index" do
      get("/appforms").should route_to("appforms#index")
    end

    it "routes to #new" do
      get("/appforms/new").should route_to("appforms#new")
    end

    it "routes to #show" do
      get("/appforms/1").should route_to("appforms#show", :id => "1")
    end

    it "routes to #edit" do
      get("/appforms/1/edit").should route_to("appforms#edit", :id => "1")
    end

    it "routes to #create" do
      post("/appforms").should route_to("appforms#create")
    end

    it "routes to #update" do
      put("/appforms/1").should route_to("appforms#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/appforms/1").should route_to("appforms#destroy", :id => "1")
    end

  end
end
