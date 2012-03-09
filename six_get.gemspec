# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "six_get/version"

Gem::Specification.new do |s|
  s.name        = "six_get"
  s.version     = SixGet::VERSION
  s.authors     = ["Sickboy"]
  s.email       = ["sb@dev-heaven.net"]
  s.homepage    = "http://www.six-networks.org"
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "six_get"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_runtime_dependency "six_sync"
  s.add_runtime_dependency "cri"
  s.add_development_dependency "riot"
  s.add_development_dependency "yard"
end
