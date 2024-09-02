source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 7.2.1'
gem 'puma', '~> 6.4.2'
gem 'sass-rails', '~> 6.0'
gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'minitest-reporters'
gem 'rails-controller-testing'
gem 'will_paginate'
gem 'bootstrap-sass'
gem 'bootstrap-will_paginate'

group :development, :test do
  gem 'sqlite3', '~> 2.0.4'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 3.40'
  gem 'selenium-webdriver'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.1.0'
end

group :production do
  gem 'pg'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
