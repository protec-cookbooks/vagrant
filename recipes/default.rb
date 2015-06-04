#
# Cookbook Name:: vagrant
# Recipe:: default
#
# Copyright 2013, Protec Innovations
#
# Licenced Under BSD Licence
#

remote_file "/tmp/vagrant_1.7.2_x86_64.deb" do
  source "https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.2_x86_64.deb"
  mode 0644
  checksum "9d7f1c587134011e2d5429eb21b6c0e95487f52e6d6d47c03ecc82cbeee73968"
end

dpkg_package "vagrant" do
  source "/tmp/vagrant_1.7.2_x86_64.deb"
  action :install
end
