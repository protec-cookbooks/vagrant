#
# Cookbook Name:: vagrant
# Recipe:: default
#
# Copyright 2013, Protec Innovations
#
# Licenced Under BSD Licence
#

remote_file "/tmp/vagrant_1.7.3_x86_64.deb" do
  source "https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.3_x86_64.deb"
  mode 0644
  checksum "755ab4a3e4e076c96cb260bf67c7f08b8186a2340d7dc2f1df98d7fc7ad3e27d"
end

dpkg_package "vagrant" do
  source "/tmp/vagrant_1.7.3_x86_64.deb"
  action :upgrade
end
