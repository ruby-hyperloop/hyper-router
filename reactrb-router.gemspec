# coding: utf-8
$:.push File.expand_path('../lib', __FILE__)

require 'reactrb-router/version'

Gem::Specification.new do |s|
  s.name          = 'reactrb-router'
  s.version       = ReactrbRouter::VERSION
  s.authors       = ['Adam George']
  s.email         = ['adamgeorge.31@gmail.com']
  s.summary       = 'react-router for Opal, part of the reactrb gem family'
  s.description   = 'Adds the ability to write and use the react-router in Ruby through Opal'
  s.files = Dir['{lib}/**/*'] + ['LICENSE', 'Rakefile', 'README.md']

  s.add_development_dependency 'bundler', '~> 1.8'
  s.add_development_dependency 'rake', '~> 10.0'
  # s.add_dependency 'opal-rails'
  # s.add_dependency 'react-rails'
  s.add_dependency 'reactrb'
  # s.add_dependency 'react-router-rails', '~>0.13.3'
end
