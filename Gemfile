source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.2'
gem 'devise'
gem 'pry'
gem 'sqlite3', group: [:development, :test]
gem 'bootstrap_form'
gem 'puma', '~> 3.7'
gem "aws-sdk-s3", require: false
gem 'mini_magick', '~> 4.8'

# assets
gem 'sass-rails', '~> 5.0'
gem 'haml-rails'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'bootstrap', '~> 4.3.1'
gem 'font-awesome-rails'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'rspec-rails', '~> 3.8'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'pg'
  gem 'thin'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

