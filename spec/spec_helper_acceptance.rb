# frozen_string_literal: true

# require 'beaker-rspec'
# require 'beaker-puppet'
# require 'beaker/puppet_install_helper'
# require 'beaker/module_install_helper'

require 'puppet_litmus'
require 'spec_helper_acceptance_local' if File.file?(File.join(File.dirname(__FILE__), 'spec_helper_acceptance_local.rb'))

PuppetLitmus.configure!
# run_puppet_install_helper unless ENV['BEAKER_provision'] == 'no'

# PuppetLitmus.configure do |c|
#   # Project root
#   proj_root = File.expand_path(File.join(File.dirname(__FILE__), '..'))

#   # Readable test descriptions
#   c.formatter = :documentation

#   # Configure all nodes in nodeset
#   c.before :suite do
#     # Install module and dependencies
#     puppet_module_install(:source => proj_root, :module_name => 'sumo')
#     # Will likely need stdlib in the future, just uncomment this
#     hosts.each do |host|
#       on host, puppet('module', 'install', 'puppetlabs-stdlib'), { :acceptable_exit_codes => [0,1] }
#     end
#   end
# end