# encoding: utf-8

require File.join(File.dirname(__FILE__), '..', 'lib', 'mixpanel')

describe Mixpanel do 

  before(:each) do 
    @track = Mixpanel.new('YOUR API KEY')
  end  

  it 'Should respond with 1' do 
    result = @track.track('nom', :foo => 'bar')
    result.should == 1
  end
end
