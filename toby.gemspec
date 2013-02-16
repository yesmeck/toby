# encoding: utf-8

require File.expand_path("../lib/toby/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "toby"
  s.description = "Taobao api wrapper."
  s.authors     = ["Wei Zhu"]
  s.email       = "yesmeck@gmail.com"
  s.files       = `git ls-files`.split("\n")
  s.homepage    = "http://github.com/yesmeck/toby"
  s.summary     = s.description
  s.version     = Toby::VERSION
  s.add_dependency "faraday"
  s.add_dependency "faraday_middleware"
  s.add_dependency "hashie"
  s.add_development_dependency "json"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
  s.add_development_dependency "pry"
end
