require 'spec_helper'

nodejs_build_tools = [ 'build-essential' ]
nodejs_repo_conf_files = [ '/etc/apt/sources.list.d/nodesource.list' ]
if os[:family] =~ /centos|redhat/
  nodejs_build_tools = [ 'gcc-c++', 'make' ]
  nodejs_repo_conf_files = [ '/etc/yum.repos.d/nodesource-el.repo',
                             '/etc/pki/rpm-gpg/NODESOURCE-GPG-SIGNING-KEY-EL' ]
end

nodejs_repo_conf_files.each do |f|
  describe file(f) do
    it { should be_file }
    it { should be_mode 644 }
  end
end

nodejs_build_tools.each do |tool|
  describe package(tool) do
    it { should be_installed }
  end
end

describe package('nodejs') do
  it { should be_installed }
end

describe command("node -v") do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match %r(v6.*) }
end

describe command("npm -v") do
  its(:exit_status) { should eq 0 }
end

describe package('yarn') do
  it { should be_installed }
end

