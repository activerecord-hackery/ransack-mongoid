source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

# Specify your gem's dependencies in ransack-mongoid.gemspec
gemspec

gem 'activemodel', '~> 4.0', require: false

if ENV['DB'] =~ /mongoid4/
  gem 'mongoid', '~> 4.0.0', require: false
else
  gem 'mongoid', '~> 5.0.0', require: false
end

gem 'ransack', github: 'activerecord-hackery/ransack'
