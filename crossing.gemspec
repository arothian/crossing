require 'rake'

spec = Gem::Specification.new do |s|
  s.name          = 'crossing'
  s.executables  << 'crossing'
  s.license       = 'MIT'
  s.version       = '0.0.1'
  s.author        = [ 'John Ulick', 'Stelligent' ]
  s.email         = 'john.ulick@stelligent.com'
  s.homepage      = 'http://www.stelligent.com'
  s.summary       = 'Utility for storing objects in S3 while taking advantage of client side envelope encryption with KMS.'
  s.description   = 'The native AWS command line does not have an easy way to upload encrypted files to S3. The Ruby SDK has a way to do this, but not everyone wants to use it. This utility allows you to do client side encrypted uploads to S3 from the command line, which is useful for uploads from your CI system to docker containers.'
  s.files       = ['lib/crossing.rb']
  s.require_paths << 'lib'
  s.require_paths << 'bin'
  s.required_ruby_version = '>= 1.9'
  s.add_runtime_dependency('aws-sdk', '~> 2')
end