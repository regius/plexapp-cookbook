#
# Cookbook Name:: plexapp
# Recipe:: server_ubuntu
#
# Author:: Joshua Timberman <cookbooks@housepub.org>
# Copyright:: (c) 2012, Joshua Timberman
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#    http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# 
package "avahi-daemon" do 
end
package "avahi-utils" do
end
deb_version = ['i386', 'i686'].include?(node[:kernel][:machine]) ? "i386" : "amd64"
download_path = File.join(Chef::Config[:file_cache_path],node["plexapp"][deb_version][/http:\/\/.*\/(.*deb)/, 1])
remote_file download_path do
  source node["plexapp"][deb_version]
  action :create_if_missing
end
dpkg_package download_path do 
  action :install
end
