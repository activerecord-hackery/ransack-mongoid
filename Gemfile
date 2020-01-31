source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

# Specify your gem's dependencies in ransack-mongoid.gemspec
gemspec


if ENV['DB'] =~ /mongoid4/
  gem 'activemodel', '~> 4.0', require: false
  gem 'mongoid', '~> 4.0', require: false
elsif ENV['DB'] =~ /mongoid5/
  gem 'activemodel', '~> 4.0', require: false
  gem 'mongoid', '~> 5.0', require: false
elsif ENV['DB'] =~ /mongoid6/
  gem 'activemodel', '~> 6.0', require: false
  gem 'mongoid', '~> 6.0', require: false
elsif ENV['DB'] =~ /mongoid7/
  gem 'activemodel', '~> 6.0', require: false
  gem 'mongoid', '~> 7.0', require: false
else
  gem 'activemodel', require: false
  gem 'mongoid'
end

gem 'ransack', github: 'activerecord-hackery/ransack'
