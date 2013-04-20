# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','more-ron','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'more-ron'
  s.version = MoreRon::VERSION
  s.author = 'MoreRon'
  s.email = 'more.ron.too@gmail.com'
  s.homepage = 'http://more-ron.github.com/more-ron/'
  s.platform = Gem::Platform::RUBY
  s.summary = 'MoreRon scripts and tricks'
# Add your other files here if you make them
  s.files = %w(
bin/more-ron
lib/more-ron/version.rb
lib/more-ron.rb
  )
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','more-ron.rdoc']
  s.rdoc_options << '--title' << 'more-ron' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'more-ron'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.5.4')
end
