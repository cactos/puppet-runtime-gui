require 'spec_helper'
describe 'cactos_runtime_gui' do
  context 'with default values for all parameters' do
    it { should contain_class('cactos_runtime_gui') }
  end
end
