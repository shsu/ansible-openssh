require 'spec_helper'

describe 'ansible-openssh::default' do

  describe package('openssh-server') do
    it { should be_installed.by('apt') }
  end

  describe package('openssh-client') do
    it { should be_installed.by('apt') }
  end

  describe port(22) do
    it { should be_listening }
  end

  describe file('/var/run/ssh') do
    it { should be_directory }
  end

  describe file('etc/ssh/sshd_config') do
    it { should be_writable.by('owner') }
    it { should be_writable.by('group') }
  end

  describe file('etc/ssh/sshd_config') do
    it { should be_mode 0644 }
  end

  describe file('/etc/ssh/ssh_config') do
    it { should be_writable.by('owner') }
    it { should be_writable.by('group') }
  end

   describe file('/etc/ssh/ssh_config') do
    it { should be_mode 0644 }
  end

end
