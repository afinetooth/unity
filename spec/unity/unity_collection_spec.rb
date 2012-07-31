require File.dirname(__FILE__) + '/../spec_helper'

describe UnityCollection do
  before(:each) do
    @collection = UnityCollection.new(:units => "in", :range => 0..12, :increment => 1)
  end

  it "is an Array" do 
    @collection.should be_a_kind_of(Array)
  end
    
  it "and its members are Units" do 
    @collection.all?{|element| element.class == Unit}.should eq(true)
  end
end