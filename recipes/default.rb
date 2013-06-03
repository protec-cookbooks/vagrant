#
# Cookbook Name:: vagrant
# Recipe:: default
#
# Copyright 2013, Protec Innovations
#
# Licenced Under BSD Licence
#

remote_file "/tmp/vagrant_1.2.2_x86_64.deb" do
  source "http://files.vagrantup.com/packages/7e400d00a3c5a0fdf2809c8b5001a035415a607b/vagrant_1.2.2_x86_64.deb"
  mode 0644
  checksum "d3035d259a28bd7090ef00629e61cc0520778143fad06f49adb3c45a75fb1425"
end

dpkg_package "vagrant" do
  source "/tmp/vagrant_1.2.2_x86_64.deb"
  action :install
end
