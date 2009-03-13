require 'rubygems'
require 'rake/gempackagetask'
require 'rake/testtask'

require 'lib/provisional/version'

task :default => :test

spec                 = Gem::Specification.new do |s|
  s.name             = 'provisional'
  s.version          = Provisional::Version.to_s
  s.has_rdoc         = true
  s.extra_rdoc_files = %w(README.rdoc)
  s.rdoc_options     = %w(--main README.rdoc)
  s.summary          = "Automation for new Rails Projects"
  s.author           = 'Mark Cornick'
  s.email            = 'mark@viget.com'
  s.homepage         = 'http://www.viget.com'
  s.files            = %w(README.rdoc Rakefile) + Dir.glob("{lib,test}/**/*")
  s.executables      = %w(provisional provisional-github-helper)
  s.add_dependency   ('mechanize', '>= 0.9.0')
  s.add_dependency   ('trollop',   '>= 1.10.2')
  s.add_dependency   ('rails',     '>= 2.3.0')
end

Rake::GemPackageTask.new(spec) do |pkg|
  pkg.gem_spec = spec
end

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = FileList["test/**/*_test.rb"]
  t.verbose = true
end

desc 'Generate the gemspec to serve this Gem from Github'
task :github do
  file = File.dirname(__FILE__) + "/#{spec.name}.gemspec"
  File.open(file, 'w') {|f| f << spec.to_ruby }
  puts "Created gemspec: #{file}"
end
