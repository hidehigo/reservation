require 'spec_helper'

describe "Shop Model" do
  let(:shop) { Shop.new }
  it 'can be created' do
    shop.should_not be_nil
  end
end
