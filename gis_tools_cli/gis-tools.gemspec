require_relative 'lib/gis/config/version'

Gem::Specification.new do |s|
  
  s.name          = 'gis-tools'
  s.version       = GISTools::VERSION
  s.platform      = Gem::Platform::RUBY

  s.summary       = 'GIS Tools CLI'
  s.description   = "A commandline interface for GIS tools."
  s.authors       = ['Sean Allen']
  s.email         = ['sca51@humboldt.edu']
  
  s.files         = Dir.glob("{lib,bin}/**/*") # This includes all files under the lib directory recursively, so we don't have to add each one individually.
  s.require_path  = 'lib'
  s.executables   = ['gis-tools'] 

  s.add_dependency 'thor'
  s.add_dependency 'highline'
  s.add_dependency 'terminal-table'

end