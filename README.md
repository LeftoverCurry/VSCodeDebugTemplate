# VSCodeDebugTemplate
A Rails template to add debugger functionality to VSCode.

## Description
A template designed to add the needed launch.json configurations and RSpec binstubs to make the VSCode debugger work 
correctly when using rbenv.  Before using you will need to check the paths for your ruby-debug-ide and bundler and update them in the
launch.json file.

## Requirements
This template currently works with:
* Rails 6.0.x

## Installation
* For a new app:
`$ rails new <AppName> -d <DB name (postgresql, sqlite3, ect)> -m /path/to/directory/VscodeDebugTemplate.rb`
* To add to an existing app:
`$ rails app:template LOCATION=~/path/to/directory/VscodeDebugTemplate.rb`

## Included/Created
This includes or creates:
* Debase gem.
* Ruby-debug-ide gem.
* A launch.json settings file.
* An rspec-core binstub.
