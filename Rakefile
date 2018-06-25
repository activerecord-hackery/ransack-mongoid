require "bundler/gem_tasks"
require 'rspec/core/rake_task'

Bundler::GemHelper.install_tasks

RSpec::Core::RakeTask.new(:mongoid) do |rspec|
  ENV['SPEC'] = 'spec/mongoid/**/*_spec.rb'
  rspec.rspec_opts = ['--backtrace']
end

task :default do
  Rake::Task["mongoid"].invoke
end
