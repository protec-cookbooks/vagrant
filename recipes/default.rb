#
# Cookbook Name:: vagrant
# Recipe:: default
#
# Copyright 2013, Protec Innovations
#
# Licenced Under BSD Licence
#

remote_file "/tmp/vagrant_1.5.1_x86_64.deb" do
  source "https://dl.bintray.com/mitchellh/vagrant/vagrant_1.5.1_x86_64.deb"
  mode 0644
  checksum "47c25bfcbb44199c2a9c61c9478510b734ff950e64c80e9ffbe382f6f702cea3"
end

dpkg_package "vagrant" do
  source "/tmp/vagrant_1.5.1_x86_64.deb"
  action :install
end
