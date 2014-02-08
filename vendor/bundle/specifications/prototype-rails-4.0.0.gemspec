# -*- encoding: utf-8 -*-
# stub: prototype-rails 4.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "prototype-rails"
  s.version = "4.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Xavier Noria"]
  s.date = "2013-12-12"
  s.email = "fxn@hashref.com"
  s.homepage = "http://github.com/rails/prototype-rails"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.1.11"
  s.summary = "Prototype, Scriptaculous, and RJS for Ruby on Rails"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["~> 4.0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
    else
      s.add_dependency(%q<rails>, ["~> 4.0"])
      s.add_dependency(%q<mocha>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, ["~> 4.0"])
    s.add_dependency(%q<mocha>, [">= 0"])
  end
end
