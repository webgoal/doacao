require "rails_helper"

RSpec.describe NecessidadesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/necessidades").to route_to("necessidades#index")
    end

    it "routes to #new" do
      expect(:get => "/necessidades/new").to route_to("necessidades#new")
    end

    it "routes to #show" do
      expect(:get => "/necessidades/1").to route_to("necessidades#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/necessidades/1/edit").to route_to("necessidades#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/necessidades").to route_to("necessidades#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/necessidades/1").to route_to("necessidades#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/necessidades/1").to route_to("necessidades#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/necessidades/1").to route_to("necessidades#destroy", :id => "1")
    end

  end
end
