require 'spec_helper'

describe TestModel do
  # it_should_behave_like AnActiveModel

  describe '#first_name' do
    it { should validate_presence_of(:first_name) }
    it { should_not allow_value("").for(:first_name) }
    it { should allow_value("First").for(:first_name) }
  end

  describe '#zip' do
    it { should_not allow_value("blah").for(:zip) }
    it { should allow_value("12345").for(:zip) }
  end
end
