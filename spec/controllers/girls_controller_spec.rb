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

  describe "GET avatar" do
    it "should render the image of the avatar" do
      Girl.delete_all
      girl = Fabricate(:girl, :product_code => 'com.clean.maria')
      get :avatar, :id => 1238, :product_code => 'com.clean.maria'
      expect(assigns(:girl).id).to eq(girl.id)
    end

  end

end
