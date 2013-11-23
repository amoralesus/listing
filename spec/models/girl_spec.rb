require 'spec_helper'

describe Girl do
  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }
  it { should validate_uniqueness_of :product_code }
  it { should validate_presence_of :product_code }

  it "renders an avatar based on product_code" do
    girl = Fabricate(:girl, :product_code => 'testing')
    expect(girl.avatar_file_path).to eq('/u/apps/files/listing/avatars/testing.jpg')
  end

end
