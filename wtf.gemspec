
require_relative './lib/wtf/version'

Gem::Specification.new do |s|
  s.name        = 'wtf'
  s.version     = Wtf::VERSION
  s.date        = '2018-12-24'
  s.summary     = "Ruby-Doc Classes and Methods"
  s.description = "Provides details on ruby classes and their methods."
  s.authors     = ["Jeremy Emata"]
  s.email       = 'jeremy.emata@gmail.com'
  s.files       = ["lib/wtf.rb", "lib/wtf/cli.rb", "lib/wtf/scraper.rb", "lib/wtf/meth.rb", "lib/wtf/class.rb","config/environment.rb"]
  s.homepage    = 'http://rubygems.org/gems/wtf'
  s.license     = 'MIT'
  s.executables << 'wtf'

  s.add_development_dependency "bundler", "~> 1.10"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "rspec", ">= 0"
  s.add_development_dependency "nokogiri", ">= 0"
  s.add_development_dependency "colorize", ">= 0"
  s.add_development_dependency "pry", ">= 0"
end