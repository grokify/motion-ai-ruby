lib = 'motion-ai'
lib_file = File.expand_path("../lib/#{lib}.rb", __FILE__)
File.read(lib_file) =~ /\bVERSION\s*=\s*["'](.+?)["']/
version = $1

Gem::Specification.new do |s|
  s.name        = lib
  s.version     = version
  s.date        = '2017-03-14'
  s.summary     = 'Motion AI SDK - Ruby SDK for the Motion AI API'
  s.description = 'A Ruby SDK for the Motion AI API'
  s.authors     = ['John Wang']
  s.email       = 'johncwang@gmail.com'
  s.homepage    = 'https://github.com/grokify/'
  s.licenses    = ['MIT']
  s.files       = Dir['lib/**/**/*']
  s.files      += Dir['[A-Z]*'] + Dir['test/**/*']
  # s.files.reject! { |fn| fn.include? "CVS" }

  s.required_ruby_version = '>= 2.2.2'

  s.add_dependency 'faraday', '~> 0', '>= 0'
  s.add_dependency 'faraday_middleware', '~> 0', '>= 0'

  s.add_development_dependency 'bundler', '~> 1'
  s.add_development_dependency 'coveralls', '~> 0'
  s.add_development_dependency 'mocha', '~> 1'
  s.add_development_dependency 'rake', '~> 12'
  s.add_development_dependency 'simplecov', '~> 0'
  s.add_development_dependency 'test-unit', '~> 3'
end
