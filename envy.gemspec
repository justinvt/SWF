# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{envy}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Justin Thibault"]
  s.date = %q{2011-02-14}
  s.description = %q{A gem that creates the illusion of namespaced env variables}
  s.email = %q{jvthibault @nospam@ gmail.com}
  s.extra_rdoc_files = ["README.md", "lib/envy.rb"]
  s.files = ["README.md", "Rakefile", "lib/envy.rb", "Manifest", "envy.gemspec"]
  s.homepage = %q{http://github.com/justinvt/envy}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Envy", "--main", "README.md"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{envy}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{A gem that creates the illusion of namespaced env variables}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
