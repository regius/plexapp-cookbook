# plexapp cookbook

This cookbook installs and configures Plex Media Server.

# Requirements

## Platform

Currently supported platforms:

* Ubuntu 12.04 (both 32 or 64 bits)

# Installation

## Berkshelf

In your top-level Chef repository Berksfile:

    cookbook "plexapp"

# Usage

Modify the attributes as required in a role or wrapper cookbook, and
add the default recipe to the run list. For example, I have a
"plex-server" role that looks like this:

    run_list("recipe[plexapp]")

# Recipes

## server_ubuntu

Adds Plex apt repository, installs the package and manages the service
using upstart.

## default

Includes the appropriate recipe based on `node['platform']`.

# Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

# Author

- Author: Joshua Timberman (<cookbooks@housepub.org>)
- Copyright:: (c) 2012, Joshua Timberman

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
