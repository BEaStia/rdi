# coding: utf-8
# frozen_string_literal: true
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rdi/version'

Gem::Specification.new do |spec|
  spec.name          = 'rdi'
  spec.version       = Rdi::VERSION
  spec.authors       = ['Igor Pavlov']
  spec.email         = ['gophan1992@gmail.com']

  spec.summary       = 'Small library for analysis of russian words.'
  spec.description   = <<~TEXT
    | Однажды возникла необходимость в подобном анализе - и я решил сделать для этого библиотеку. TBC...
  TEXT
  spec.homepage      = 'https://github.com/BEaStia/rdi'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop'
end
