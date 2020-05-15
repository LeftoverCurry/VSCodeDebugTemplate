# frozen_string_literal: true

# Template Name: Full Setup With VSCode Debugging
# Author: Tripp Martin
# Instructions: $ rails new <AppName> -d <DB name (postgresql, sqlite3, ect)> -m /path/to/directory/full_setup.rb

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
