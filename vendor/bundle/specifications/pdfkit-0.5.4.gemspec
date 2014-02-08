# -*- encoding: utf-8 -*-
# stub: pdfkit 0.5.4 ruby lib

Gem::Specification.new do |s|
  s.name = "pdfkit"
  s.version = "0.5.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jared Pace", "Relevance"]
  s.date = "2013-06-12"
  s.description = "Uses wkhtmltopdf to create PDFs using HTML"
  s.email = ["jared@codewordstudios.com"]
  s.homepage = "https://github.com/pdfkit/pdfkit"
  s.require_paths = ["lib"]
  s.rubyforge_project = "pdfkit"
  s.rubygems_version = "2.1.11"
  s.summary = "HTML+CSS -> PDF"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, ["~> 0.9.2"])
      s.add_development_dependency(%q<rdoc>, ["~> 4.0.1"])
      s.add_development_dependency(%q<rspec>, ["~> 2.2.0"])
      s.add_development_dependency(%q<mocha>, [">= 0.9.10"])
      s.add_development_dependency(%q<rack-test>, [">= 0.5.6"])
      s.add_development_dependency(%q<activesupport>, [">= 3.0.8"])
      s.add_development_dependency(%q<wkhtmltopdf-binary>, ["~> 0.9.5"])
    else
      s.add_dependency(%q<rake>, ["~> 0.9.2"])
      s.add_dependency(%q<rdoc>, ["~> 4.0.1"])
      s.add_dependency(%q<rspec>, ["~> 2.2.0"])
      s.add_dependency(%q<mocha>, [">= 0.9.10"])
      s.add_dependency(%q<rack-test>, [">= 0.5.6"])
      s.add_dependency(%q<activesupport>, [">= 3.0.8"])
      s.add_dependency(%q<wkhtmltopdf-binary>, ["~> 0.9.5"])
    end
  else
    s.add_dependency(%q<rake>, ["~> 0.9.2"])
    s.add_dependency(%q<rdoc>, ["~> 4.0.1"])
    s.add_dependency(%q<rspec>, ["~> 2.2.0"])
    s.add_dependency(%q<mocha>, [">= 0.9.10"])
    s.add_dependency(%q<rack-test>, [">= 0.5.6"])
    s.add_dependency(%q<activesupport>, [">= 3.0.8"])
    s.add_dependency(%q<wkhtmltopdf-binary>, ["~> 0.9.5"])
  end
end
