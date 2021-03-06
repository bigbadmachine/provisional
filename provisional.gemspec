# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{provisional}
  s.version = "2.1.11"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mark Cornick"]
  s.date = %q{2009-07-28}
  s.default_executable = %q{provisional}
  s.description = %q{Provisional creates a new Rails project, using a standard Rails 2.3 application template, and checks it into a new SCM repository.}
  s.email = %q{mark@viget.com}
  s.executables = ["provisional"]
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    ".gitignore",
     "README.md",
     "Rakefile",
     "VERSION.yml",
     "bin/provisional",
     "lib/provisional.rb",
     "lib/provisional/exceptions.reek",
     "lib/provisional/project.rb",
     "lib/provisional/rails_application.rb",
     "lib/provisional/scm/beanstalk.rb",
     "lib/provisional/scm/bzr.rb",
     "lib/provisional/scm/exceptions.reek",
     "lib/provisional/scm/git.rb",
     "lib/provisional/scm/github.rb",
     "lib/provisional/scm/heroku.rb",
     "lib/provisional/scm/hg.rb",
     "lib/provisional/scm/svn.rb",
     "lib/provisional/scm/unfuddle.rb",
     "lib/provisional/scm/unfuddle_svn.rb",
     "lib/provisional/templates/viget.rb",
     "lib/provisional/unfuddle_common.rb",
     "provisional.gemspec",
     "test/test_helper.rb",
     "test/unit/beanstalk_test.rb",
     "test/unit/bzr_test.rb",
     "test/unit/git_test.rb",
     "test/unit/github_test.rb",
     "test/unit/heroku_test.rb",
     "test/unit/hg_test.rb",
     "test/unit/project_test.rb",
     "test/unit/rails_application_test.rb",
     "test/unit/svn_test.rb",
     "test/unit/unfuddle_common_test.rb",
     "test/unit/unfuddle_svn_test.rb",
     "test/unit/unfuddle_test.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/vigetlabs/provisional}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{viget}
  s.rubygems_version = %q{1.3.2}
  s.summary = %q{Automation for new Rails Projects}
  s.test_files = [
    "test/test_helper.rb",
     "test/unit/beanstalk_test.rb",
     "test/unit/bzr_test.rb",
     "test/unit/git_test.rb",
     "test/unit/github_test.rb",
     "test/unit/heroku_test.rb",
     "test/unit/hg_test.rb",
     "test/unit/project_test.rb",
     "test/unit/rails_application_test.rb",
     "test/unit/svn_test.rb",
     "test/unit/unfuddle_common_test.rb",
     "test/unit/unfuddle_svn_test.rb",
     "test/unit/unfuddle_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<trollop>, [">= 1.10.2"])
      s.add_runtime_dependency(%q<rails>, [">= 2.3.0"])
      s.add_runtime_dependency(%q<git>, [">= 1.0.5"])
      s.add_runtime_dependency(%q<builder>, [">= 2.1.2"])
    else
      s.add_dependency(%q<trollop>, [">= 1.10.2"])
      s.add_dependency(%q<rails>, [">= 2.3.0"])
      s.add_dependency(%q<git>, [">= 1.0.5"])
      s.add_dependency(%q<builder>, [">= 2.1.2"])
    end
  else
    s.add_dependency(%q<trollop>, [">= 1.10.2"])
    s.add_dependency(%q<rails>, [">= 2.3.0"])
    s.add_dependency(%q<git>, [">= 1.0.5"])
    s.add_dependency(%q<builder>, [">= 2.1.2"])
  end
end
