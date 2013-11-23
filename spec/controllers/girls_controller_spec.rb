require 'spec_helper'

describe GirlsController do

  describe "GET index" do

    before do
      3.times { Fabricate(:girl) }
    end

    it "should render the index as json" do
      get :index
      puts response.body
      expect(response.code).to eq('200')
    end
  end

end
