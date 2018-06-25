
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ransack/mongoid/version"

Gem::Specification.new do |spec|
  spec.name          = "ransack-mongoid"
  spec.version       = Ransack::Mongoid::VERSION
  spec.authors     = ["Ernie Miller", "Ryan Bigg", "Jon Atack","Sean Carroll"]
  spec.email       = ["ernie@erniemiller.org", "radarlistener@gmail.com", "jonnyatack@gmail.com","sfcarroll@gmail.com"]
  spec.homepage    = "https://github.com/activerecord-hackery/ransack-mongoid"

  spec.summary       = %q{Object-based searching for Mongoid.}
  spec.description   = %q{Ransack is the successor to the MetaSearch gem. It improves and expands upon MetaSearch's functionality, but does not have a 100%-compatible API. This is the gem with Mongoid support}
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # spec.add_dependency "ransack", "~> 1.8"
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec', '~> 3'
  spec.add_development_dependency 'machinist', '~> 1.0.6'
  spec.add_development_dependency 'faker', '~> 0.9.5'
  spec.add_development_dependency 'pry', '0.10'
end
