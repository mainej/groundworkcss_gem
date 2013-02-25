# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "groundworkcss/version"

Gem::Specification.new do |s|
  s.name        = "groundworkcss"
  s.version     = Groundworkcss::VERSION
  s.authors     = ["Gary Hepting", "BananaNeil", "SideReel"]
  s.email       = [""]
  s.homepage    = "https://github.com/groundworkcss/groundwork"
  s.summary     = %q{awesome css framework}
  s.description = %q{Make your site a ninja}

  s.rubyforge_project = "groundworkcss"

  s.files         = Dir["{lib,vendor}/**/*"] - ["Gemfile.lock"]
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
