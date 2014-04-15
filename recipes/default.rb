#
# Cookbook Name:: vagrant
# Recipe:: default
#
# Copyright 2013, Protec Innovations
#
# Licenced Under BSD Licence
#

remote_file "/tmp/vagrant_1.5.3_x86_64.deb" do
  source "https://dl.bintray.com/mitchellh/vagrant/vagrant_1.5.3_x86_64.deb"
  mode 0644
  checksum "430c5553aeb3f2f5ff30c8c32a565db16669eaf76a553e3e1ceff27cbe6cb2b2"
end

dpkg_package "vagrant" do
  source "/tmp/vagrant_1.5.3_x86_64.deb"
  action :install
end
