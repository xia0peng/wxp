
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "wxp/version"

Gem::Specification.new do |spec|
  spec.name          = "wxp"
  spec.version       = Wxp::VERSION
  spec.authors       = ["xiaopengwang"]
  spec.email         = ["xiaopengmonsters@gmail.com"]

  spec.summary       = %q{a short summary, because RubyGems requires one.}
  spec.description   = %q{a longer description or delete this line.}
  spec.homepage      = "https://github.com/xiaopengmonsters/wxp"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
    spec.metadata["homepage_uri"] = spec.homepage
    # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
    # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir["lib/**/*.rb"] + %w{ bin/wxp README.md }
  spec.executables   = %w{ wxp }
  spec.require_paths = %w{ lib }

  # 生产依赖
  # spec.add_dependency 

  # 开发依赖
  spec.add_development_dependency "bundler", ">= 1.17"
  spec.add_development_dependency "rake", ">= 10.0"

  # 运行时依赖
  spec.add_runtime_dependency "claide", ">= 1.0.2", "< 2.0"
  spec.add_runtime_dependency "molinillo", "~> 0.6.6"
  spec.add_runtime_dependency "colored2", "~> 3.1"
  spec.add_runtime_dependency "cocoapods", '>= 1.8.4'

end
