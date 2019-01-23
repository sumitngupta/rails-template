def main_script
  add_gems

  run_gem_installs
  # Copy readme template
  copy_file 'readme_template.md', 'README.md'
  copy_testing_configs

  after_bundle do
    git_init
  end
end

def copy_testing_configs
  copy_file 'spec/support/database_cleaner.rb', 'spec/support/database_cleaner.rb'
end

def run_gem_installs
  rails_command 'generate rspec:install'
  rails_command 'generate inky:install'
end

def git_init
  git :init
  git add:    "."
  git commit: "-m 'Initial commit'"
end

def add_gems
  # System hosting
  gem 'foreman'
  gem 'puma-heroku'

  # Frontend Gems
  gem 'haml-rails'
  gem 'autoprefixer-rails'
  gem 'font_assets'
  gem 'inky-rb', require: 'inky'
  gem 'premailer-rails'

  gem 'stenographer-rails'

  group :development do
    # Performance Monitoring
    gem 'bullet'
    gem 'lol_dba'
  end

  group :test do
    gem 'email_spec'
  end

  gem_group :development, :test do
    gem 'rspec-rails'
    gem 'rspec_junit_formatter'
    gem 'rspec-json_expectations'

    gem 'should_not'
    gem 'shoulda'
    gem 'shoulda-callback-matchers'
    gem 'shoulda-matchers'

    gem 'database_cleaner'

    gem 'factory_bot_rails'
    gem 'faker'
    gem 'fuubar'
    gem 'pry-rails'
    gem 'rails-controller-testing'
    gem 'simplecov', require: false
    gem 'spring'
    gem 'spring-commands-rspec'
  end
end

# Initialize Git Repo

# Configure Application.rb
environment 'config.time_zone = "Pacific Time (US & Canada)"'

# Autoload some paths I regularly use for abstractions
environment 'config.autoload_paths += %W[#{Rails.root}/lib]'
environment 'config.eager_load_paths += %W[#{Rails.root}/lib]'

environment 'config.font_assets.origin = "*"'
environment 'config.sass.preferred_syntax = :sass'
environment 'config.generators do |g|
  g.stylesheets false
  g.helper false
  g.javascripts false
  g.test_framework :rspec,
                   view_specs: false,
                   request_specs: false,
                   routing_specs: false

  g.fixture_replacement :factory_bot
end'

=begin
Install default rubocop configs

=end
