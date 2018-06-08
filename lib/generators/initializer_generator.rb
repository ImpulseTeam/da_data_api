
class InitializerGenerator < Rails::Generators::NamedBase
    source_root File.expand_path('templates', __dir__)

    def copy_initializer_file
        copy_file 'dadata.rb', 'config/initializers/dadata.rb'
    end
  end