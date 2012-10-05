require 'spec_helper'

describe "Timebox Model" do
  let(:timebox) { Timebox.new }
  it 'can be created' do
    timebox.should_not be_nil
  end
end
