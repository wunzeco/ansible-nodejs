require 'spec_helper'

describe file('/etc/apt/sources.list.d/nodesource.list') do
  it { should be_file }
  it { should be_mode 644 }
end

describe package('nodejs') do
  it { should be_installed }
end

describe package('build-essential') do
  it { should be_installed }
end

describe command("node -v") do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match %r(v6.*) }
end

describe command("npm -v") do
  its(:exit_status) { should eq 0 }
end
