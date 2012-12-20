ruby "1.9.3"

source :rubygems

gem "thin"
gem "rack-contrib"

gem "middleman"
gem "middleman-livereload", :git => "git://github.com/middleman/middleman-livereload.git"
gem "middleman-smusher", :git  => "git://github.com/middleman/middleman-smusher.git"
gem "middleman-favicon-maker", :git => "git://github.com/follmann/middleman-favicon-maker.git"

# gem "jquery-sprockets", :git => "git://github.com/ent-io/jquery-sprockets.git", :branch =>"dev"
gem "bootstrap-sass"
gem "sassy-buttons"
gem "slim"

group :development do
  gem 'heroku'
  gem 'foreman'
  gem 'therubyracer'
  gem 'oj'
end

group :production do
  gem 'therubyracer-heroku'
  gem 'oj'
end
