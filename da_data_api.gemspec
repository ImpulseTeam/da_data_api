Gem::Specification.new do |s|
    s.name = "da_data_api"
    s.version = "0.0.0"
    s.platform = Gem::Platform::RUBY
    s.authors = ["Andrew Rudenets, Alexandra Terzieva"]
    s.email = ["a.terzieva@elonsoft.ru"]
    s.homepage = "https://github.com/ImpulseTeam/da_data_api"
    s.summary = "Api to dadata service"
    s.files = `git ls-files -z`.split("\x0")
    s.require_paths = ["lib"]

    s.required_ruby_version = '>= 2.5.0'
    s.add_development_dependency 'bundler'
    s.add_dependency 'rest-client', '~> 2.1.0'
  end