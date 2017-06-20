# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kubernetes_secrets_to_env/version'

Gem::Specification.new do |spec|
  spec.name          = "kubernetes-secrets-to-env"
  spec.version       = KubernetesSecretsToEnv::VERSION
  spec.authors       = ["Scott Ringwelski"]
  spec.email         = ["sgringwe@mtu.edu"]

  spec.summary       = %q{Easily convert kubernetes secrets to ENV variables.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
