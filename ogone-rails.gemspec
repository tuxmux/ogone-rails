# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "ogone-rails"
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Robin Houdmeyers"]
  s.date = "2012-10-29"
  s.description = "Add Ogone payments functionality to your Rails application"
  s.email = "houdmeyers@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".DS_Store",
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "lib/.DS_Store",
    "lib/generators/.DS_Store",
    "lib/generators/ogone/.DS_Store",
    "lib/generators/ogone/config_generator.rb",
    "lib/generators/ogone/templates/ogone.rb",
    "lib/generators/ogone/templates/ogone.yml",
    "lib/ogone-rails.rb",
    "lib/ogone-rails/check-auth.rb",
    "lib/ogone-rails/config.rb",
    "lib/ogone-rails/form.rb",
    "lib/ogone-rails/helpers.rb",
    "lib/ogone-rails/rails.rb",
    "lib/ogone-rails/string-to-hash.rb",
    "lib/rails/.DS_Store",
    "ogone-rails.gemspec",
    "test/helper.rb",
    "test/test_ogone-rails.rb"
  ]
  s.homepage = "http://github.com/robinhoudmeyers/ogone-rails"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Ogone usable in Rails"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["~> 1.1.3"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.3"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["~> 1.1.3"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.3"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["~> 1.1.3"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.3"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

