#
# Cookbook Name:: node-dmx-stack
# Recipe:: default
#
# Copyright (C) 2015 Bart Nowak
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

# Install FTDI drivers
#if File.file?( "#{ node['frontend-standard-stack']['project']['dir'] }/package.json" )
	bash 'install_ftdi_drivers' do
	    code <<-EOH
            wget -O- https://raw.githubusercontent.com/KABA-CCEAC/node-ftdi/master/install.sh | bash
	    EOH
    end
#end
