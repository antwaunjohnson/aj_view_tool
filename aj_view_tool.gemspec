
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "aj_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "aj_view_tool"
  spec.version       = AjViewTool::VERSION
  spec.authors       = ["antwaunjohnson"]
  spec.email         = ["antwaun.l.johnson@gmail.com"]

  spec.summary       = %q{Various view specific methods for applications I use.}
  spec.description   = %q{Provided generated HTML data for Rails applications.}
  spec.homepage      = "https://antwaunjohnson.com."
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.6"
  spec.add_development_dependency "rake", "~> 13.2.1"
end
