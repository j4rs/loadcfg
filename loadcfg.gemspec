# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{loadcfg}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Jorge Rodriguez}]
  s.date = %q{2011-08-09}
  s.description = %q{Allow you to load any configuration constants from config/whatever.yml}
  s.email = %q{jorge.rodriguez@continuum.cl}
  s.extra_rdoc_files = [%q{README.rdoc}, %q{lib/loadcfg.rb}]
  s.files = [%q{README.rdoc}, %q{Rakefile}, %q{lib/loadcfg.rb}, %q{Manifest}, %q{loadcfg.gemspec}]
  s.homepage = %q{http://github.com/j4rs/loadcfg}
  s.rdoc_options = [%q{--line-numbers}, %q{--inline-source}, %q{--title}, %q{Loadcfg}, %q{--main}, %q{README.rdoc}]
  s.require_paths = [%q{lib}]
  s.rubyforge_project = %q{loadcfg}
  s.rubygems_version = %q{1.8.7}
  s.summary = %q{Allow you to load any configuration constants from config/whatever.yml}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
