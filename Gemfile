if RUBY_VERSION =~ /1.9/
    Encoding.default_external = Encoding::UTF_8
    Encoding.default_internal = Encoding::UTF_8
end

source 'http://rubygems.org'

gem 'rails', '~> 3.2.18'
gem 'haml'
gem 'nokogiri'
gem 'jquery-rails'
gem 'rdiscount', '~> 1.6.8'
gem 'mini_magick', '~> 3.4.0'
gem 'whenever'
gem 'formtastic'
gem 'paperclip'
gem 'mail'
gem 'i18n'
gem 'sqlite3', '~> 1.3.10'
gem 'therubyracer', :platforms => :ruby
gem 'libv8', '~> 3.11.8'

group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
  gem 'modernizr-rails'
end


# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
group :development, :test do
   gem 'rspec-rails', '~> 3.2.0'
   # gem 'debugger'
   gem 'capistrano'
   gem 'capistrano-ext'
   gem 'rvm-capistrano'
end

