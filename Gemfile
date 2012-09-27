ruby "1.9.3"

source :rubygems

gem "thin"
gem "rack-contrib"
gem "middleman", "~>3.0.5"
gem "middleman-livereload"
gem "middleman-smusher"

gem "jquery-sprockets", :git => "git://github.com/ent-io/jquery-sprockets.git", :branch =>"dev"
gem "bootstrap-sass"
gem "slim", "~> 1.3.2"

group :development do
  gem 'heroku'
  gem 'foreman'
end

group :production do
  gem 'therubyracer-heroku'
end
