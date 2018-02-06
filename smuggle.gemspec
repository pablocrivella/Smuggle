lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'smuggle/version'

Gem::Specification.new do |spec|
  spec.name          = 'smuggle'
  spec.version       = Smuggle::VERSION
  spec.authors       = ['Pablo Crivella']
  spec.email         = ['pablocrivella@gmail.com']

  spec.summary       = 'It exports and imports all kinds of stuff from and to CSV'
  spec.description   = 'It exports and imports all kinds of stuff from and to CSV'
  spec.homepage      = 'https://github.com/InspireNL/smuggle'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'factory_bot', '~> 4.8'
  spec.add_development_dependency 'faker', '~> 1.8'
  spec.add_development_dependency 'pry', '~> 0.10'
  spec.add_development_dependency 'pry-byebug', '~> 3.5'
  spec.add_development_dependency 'rake', '~> 12.3'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
