# frozen_string_literal: true

# Template Name: VSCode Debugging Template
# Author: Tripp Martin
# Instructions:
# For a new app:
# $ rails new <AppName> -d <DB name (postgresql, sqlite3, ect)> -m /path/to/directory/VscodeDebugTemplate.rb
# For an existing app:
# $ rails app:template LOCATION=~/path/to/directory/VscodeDebugTemplate.rb

# allows the use of relative paths within the template
def source_paths
  [__dir__]
end

# Add gem dependancies
def add_gems
  gem_group :development, :test do
    gem 'debase'
    gem 'ruby-debug-ide'
  end

  # Configure debugger
  def configure_debugger
    # Set up launch.json file for VSCode debugging
    run 'mkdir ./.vscode'
    copy_file 'launch_template.json', './.vscode/launch.json'

    # Create RSpec binstub to fix debugging error when debugging tests
    run 'bundle binstubs rspec-core'
  end
end

# Action calls
add_gems

after_bundle { configure_debugger }

say 'Configuration has been updated.  Make sure to check your launch.json file to ensure that the paths to the ruby-debug-ide and bundler are correct.', :green
