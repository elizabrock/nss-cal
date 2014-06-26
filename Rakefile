#!/usr/bin/env ruby
# -*- ruby -*-

require 'rake/testtask'
Rake::TestTask.new(:test) do |t|
  t.pattern = "test/test_*.rb"
end

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

desc "Run tests"
task :default => [:spec, :test]
