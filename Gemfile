source 'https://rubygems.org'
ruby '2.4.1'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails',  '5.0.2'
gem 'pg',     '0.20.0'
gem 'puma',   '3.8.2'
gem 'devise', '4.2.1'
group :development, :test do
  gem 'byebug', '9.0.6', platform: :mri
  gem 'rspec-rails',              '3.5.2'
  gem 'factory_girl_rails',       '4.8.0'
  gem 'pry-rails',                '0.3.6'
  gem 'awesome_print',            '1.7.0'
  gem 'spring-commands-rspec',    '1.0.4'
  gem 'fuubar',                   '2.2.0'
  gem 'rails-controller-testing', '1.0.1'
end

group :test do
  gem 'shoulda-matchers',     '3.1.1', require: false
  gem 'simplecov',            '0.14.1', require: false
  gem 'database_cleaner',     '1.5.3'
  gem 'faker',                '1.7.3'
end

group :development do
  gem 'listen',                '3.0.8'
  gem 'spring',                '2.0.1'
  gem 'spring-watcher-listen', '2.0.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', '1.2.3', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
