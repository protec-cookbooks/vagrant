#
# Cookbook Name:: vagrant
# Recipe:: default
#
# Copyright 2013, Protec Innovations
#
# Licenced Under BSD Licence
#

remote_file "/tmp/vagrant_1.7.4_x86_64.deb" do
  source "https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.4_x86_64.deb"
  mode 0644
  checksum "dcd2c2b5d7ae2183d82b8b363979901474ba8d2006410576ada89d7fa7668336"
end

dpkg_package "vagrant" do
  source "/tmp/vagrant_1.7.4_x86_64.deb"
  action :upgrade
end
