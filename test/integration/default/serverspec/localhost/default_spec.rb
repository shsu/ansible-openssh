require 'spec_helper'

describe 'ansible-openssh::default' do

  describe package('openssh-server') do
    it { should be_installed.by('apt') }
  end

  describe package('openssh-client') do
    it { should be_installed.by('apt') }
  end
end
