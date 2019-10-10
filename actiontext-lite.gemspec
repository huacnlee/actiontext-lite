# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "actiontext-lite/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "actiontext-lite"
  spec.version     = ActionTextLite::VERSION
  spec.authors     = ["Jason Lee"]
  spec.email       = ["huacnlee@gmail.com"]
  spec.homepage    = "http://github.com/huacnlee/actiontext-lite"
  spec.summary     = "Lite version of the ActionText."
  spec.description = "Lite version of the ActionText."
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "CHANGELOG.md", "README.md"]

  spec.add_dependency "actiontext", ">= 6.0"
end
