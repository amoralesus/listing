require 'spec_helper'

describe Girl do
  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }
  it { should validate_uniqueness_of :product_code }
  it { should validate_presence_of :product_code }

end
