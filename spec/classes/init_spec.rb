require 'spec_helper'
describe 'sdemmodule' do

  context 'with defaults for all parameters' do
    it { should contain_class('sdemmodule') }
  end
end
