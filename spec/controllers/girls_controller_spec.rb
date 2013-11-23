require 'spec_helper'

describe GirlsController do

  describe "GET index" do

    before do
      3.times { Fabricate(:girl) }
      Fabricate(:girl, :name => 'Lucia')
    end

    it "should render the index as json" do
      get :index, :q => {:name_cont => 'Lucia'}
      expect(response.code).to eq('200')
      expect(assigns(:girls).size).to eq(1)
    end
  end

end
