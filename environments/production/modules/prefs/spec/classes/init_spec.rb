require 'spec_helper'
describe 'prefs' do
  context 'with default values for all parameters' do
    it { should contain_class('prefs') }
  end
end
