source "https://rubygems.org"

ruby "3.4.1"

gem "bootsnap", require: false
gem "cssbundling-rails"
gem "devise"
gem "importmap-rails"
gem "jbuilder"
gem "pg", "~> 1.1"
gem "propshaft"
gem "puma", ">= 5.0"
gem "rails", "~> 8.0.1"
gem "slim-rails"
gem "solid_cable"
gem "solid_cache"
gem "solid_queue"
gem "stimulus-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[windows jruby]

group :development, :test do
  gem "brakeman", require: false
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"
  gem "factory_bot_rails"
  gem "rspec-rails"
end

group :development do
  gem "rubocop", require: false
  gem "rubocop-factory_bot", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
  gem "rubocop-rspec_rails", require: false
  gem "slim_lint", require: false
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
